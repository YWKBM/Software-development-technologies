#include "dialog.h"

#include <QApplication>
#include <PrimesGenerator.cpp>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    Dialog w;
    BasicPrimesGenerator* basicPrimesGenerator = new BasicPrimesGenerator;
    w.primesGenerator = basicPrimesGenerator;
    w.show();
    return a.exec();
}
