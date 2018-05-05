using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.ComponentModel;
using MahApps.Metro.Controls;
using QuickGraph;
using QuickGraph.Algorithms;

namespace TP_TPGO2
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : MetroWindow, INotifyPropertyChanged
    {
        private IBidirectionalGraph<object, IEdge<object>> _graphToVisualize;
        public IBidirectionalGraph<object, IEdge<object>> GraphToVisualize
        {
            get { return _graphToVisualize; }
            set
            {
                if (!Equals(value, this._graphToVisualize))
                {
                    this._graphToVisualize = value;
                    this.RaisePropChanged("GraphToVisualize");
                }
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        private void RaisePropChanged(string name)
        {
            var eh = this.PropertyChanged;
            if (eh != null)
            {
                eh(this, new PropertyChangedEventArgs(name));
            }
        }

        public MainWindow()
        {
            var g = new BidirectionalGraph<object, IEdge<object>>();
            _graphToVisualize = g;
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            var f = (BidirectionalGraph<object, IEdge<object>>)GraphToVisualize;
            object name = f.VertexCount == 0 ? "1" : (Int16.Parse((string)f.Vertices.Last()) + 1).ToString();
            f.AddVertex(name);
            combo_from.Items.Add(name);
            combo_to.Items.Add(name);
            combo_delete.Items.Add(name);
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            if ((combo_from.SelectedItem != null) && (combo_to.SelectedItem != null))
            {
                if (combo_from.SelectedItem != combo_to.SelectedItem)
                {
                    var f = (BidirectionalGraph<object, IEdge<object>>)GraphToVisualize;
                    if (f.ContainsEdge(combo_from.SelectedItem, combo_to.SelectedItem)) MessageBox.Show("Cet arc existe déja", "Indication");
                    else
                    {
                        f.AddEdge(new Edge<object>(combo_from.SelectedItem, combo_to.SelectedItem));
                        f.AddEdge(new Edge<object>(combo_to.SelectedItem, combo_from.SelectedItem));
                    }
                }
                else MessageBox.Show("Veuillez chosir deux noeuds distincts svp", "Indication");
            }
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            if (combo_delete.SelectedItem != null)
            {
                var f = (BidirectionalGraph<object, IEdge<object>>)GraphToVisualize;
                object name = combo_delete.SelectedItem;
                if (f.VertexCount > 1) f.RemoveVertex(name);
                else
                {
                    // TODO fix this case
                    MessageBox.Show("Vous allez vider le graphe !!", "warning");
                }
                combo_from.Items.Remove(name);
                combo_to.Items.Remove(name);
                combo_delete.Items.Remove(name);
            }
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            if ((combo_from.SelectedItem != null) && (combo_to.SelectedItem != null))
            {
                if (combo_from.SelectedItem != combo_to.SelectedItem)
                {
                    var f = (BidirectionalGraph<object, IEdge<object>>)GraphToVisualize;
                    if (f.ContainsEdge(combo_from.SelectedItem, combo_to.SelectedItem))
                    {
                        IEdge<object> my_edge;
                        f.TryGetEdge(combo_from.SelectedItem, combo_to.SelectedItem, out my_edge);
                        f.RemoveEdge(my_edge);
                        f.TryGetEdge(combo_to.SelectedItem, combo_from.SelectedItem, out my_edge);
                        f.RemoveEdge(my_edge);
                    }
                    else MessageBox.Show("Cet arc n'existe pas", "Erreur");
                }
                else MessageBox.Show("Veuillez chosir deux noeuds distincts svp", "Indication");
            }
        }

        private void Button_Click_4(object sender, RoutedEventArgs e)
        {
            var f = (BidirectionalGraph<object, IEdge<object>>)GraphToVisualize.ToBidirectionalGraph();
            if (f.VertexCount >= 1)
            {
                IDictionary<object, int> components = new Dictionary<object, int>();
                if ((f.StronglyConnectedComponents(out components)) > 1) MessageBox.Show("Le graphe contient plus qu'un composant connexe ! le test ne peut pas s'effectuer", "error");
                else
                {
                    BidirectionalGraph<object, IEdge<object>> g;
                    List<object> vertices = new List<object>();
                    foreach (object element in f.Vertices)
                    {
                        g = f.Clone();
                        g.RemoveVertex(element);
                        if ((g.StronglyConnectedComponents(out components)) > 1)
                            vertices.Add(element);
                    }
                    ResultWindow window = new ResultWindow(vertices);
                    window.Show();
                }
            }
            else MessageBox.Show("Le graphe est vide !", "error");
        }
    }
}
