#include "dialog.h"
#include "ui_dialog.h"
#include "../primeslist/primesgenerator.h"
#include <QDebug>
#include "../primeslist/PrimesGenerator.cpp"
#include <vector>



Dialog::Dialog(QWidget *parent)
    : QDialog(parent)
    , ui(new Ui::Dialog)

{
    ui->setupUi(this);
}

void Dialog::calculate(){
    int a = ui->lineEdit_2->text().toInt();
    int b = ui->lineEdit->text().toInt();

    std::vector<int> primes = primesGenerator->generatePrimes(a, b);

    for (int prime : primes){
        ui->listWidget->addItem(QString::number(prime));
    }
}


Dialog::~Dialog()
{
    delete ui;
}



