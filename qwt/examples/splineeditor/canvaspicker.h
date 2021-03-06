#include <qobject.h>

class QPoint;
class QwtPlot;
class QwtPlotCurve;

class CanvasPicker: public QObject
{
    Q_OBJECT
public:
    CanvasPicker( QwtPlot *plot );
    virtual bool eventFilter( QObject *, QEvent * );

private:
    void select( const QPoint & );
    void move( const QPoint & );
    void moveBy( int dx, int dy );
    void release();

    QwtPlot *plot();
    const QwtPlot *plot() const;

    QwtPlotCurve *d_selectedCurve;
    int d_selectedPoint;
};
