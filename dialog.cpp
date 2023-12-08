#include "dialog.h"
#include "ui_dialog.h"
#include <QDebug>
#include <QString>
#include <libprimeslist.h>
#include <vector>
#include <QMessageBox>



Dialog::Dialog(QWidget *parent)
    : QDialog(parent)
    , ui(new Ui::Dialog)

{
    ui->setupUi(this);
}

void Dialog::calculate(){
    bool isAOK, isBOK;


    int a = ui->lineEdit_2->text().toInt(&isAOK);
    int b = ui->lineEdit->text().toInt(&isBOK);

    if(!isAOK) {
    QMessageBox::critical(this, "Ошибка", "A должно быть целым числом");
    return;
    }
    if(!isBOK) {
    QMessageBox::critical(this, "Ошибка", "B должно быть целым числом");
    return;
    }


    LibPrimeslist lb;
    std::vector<int> primes = lb.GeneratePrimes(a, b);

    for (int prime : primes){
        ui->listWidget->addItem(QString::number(prime));
    }
}


Dialog::~Dialog()
{
    delete ui;
}



