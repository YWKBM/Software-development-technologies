#ifndef DIALOG_H
#define DIALOG_H

#include <QDialog>
#include "../primeslist/primesgenerator.h"

QT_BEGIN_NAMESPACE
namespace Ui { class Dialog; }
QT_END_NAMESPACE

class Dialog : public QDialog
{
    Q_OBJECT

public slots:
    void calculate();

public:
    Dialog(QWidget *parent = nullptr);
    ~Dialog();
    PrimesGenerator* primesGenerator;


private:
    Ui::Dialog *ui;
};
#endif // DIALOG_H
