using System.Collections.Generic;
using MahApps.Metro.Controls;
using QuickGraph;

namespace TP_TPGO2
{
    /// <summary>
    /// Interaction logic for ResultWindow.xaml
    /// </summary>
    public partial class ResultWindow : MetroWindow
    {
        private IBidirectionalGraph<object, IEdge<object>> _graphToVisualize;
        public IBidirectionalGraph<object, IEdge<object>> GraphToVisualize
        {
            get { return _graphToVisualize; }
        }

        public ResultWindow(List<object> vertices)
        {
            var g = new BidirectionalGraph<object, IEdge<object>>();
            foreach (object vertex in vertices)
                g.AddVertex(vertex);
            _graphToVisualize = g;

            InitializeComponent();
        }
    }
}
