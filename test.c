#include <Rinternals.h>
void passToR(SEXP x, char * name);
SEXP evalInR(char * cmd);
void evalQuietlyInR(char * cmd);

int main() {
	evalQuietlyInR("y <- 3");
	evalQuietlyInR("z <- 2.5");
	evalQuietlyInR("print(y*z)");
	evalQuietlyInR("y <- rnorm(10)");
	evalQuietlyInR("print(y)");
	SEXP vec = evalInR("y");
	Rf_PrintValue(vec);
	printf("%f\n", REAL(vec)[4]);
}
