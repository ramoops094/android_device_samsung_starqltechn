#include <openssl/x509.h>

extern "C" {
    int X509_set1_signature_algo(X509 *x509, const X509_ALGOR *algo) {
        return 1;
    }
}