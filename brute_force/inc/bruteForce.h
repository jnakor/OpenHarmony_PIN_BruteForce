#include "buffer.h"
#include "pin_db.h"
#include <vector>

// Parameters for the brute force attack
typedef struct {
    Buffer *pinDecodeCredential;
    std::vector<uint8_t> salt;
} BFParam;

class BruteForce {
public:
    BruteForce();
    ~BruteForce();
    int32_t BF(uint64_t templateId, int pinNum, int threadNum);

private:
    BFParam bfParam;
    int32_t load(uint64_t templateId);
    int32_t tryOne(std::vector<uint8_t> &pinData);  
    int32_t storeResult(std::vector<uint8_t> &pinData);
    void display(std::vector<uint8_t> &pinData); 
    int64_t pinRange(int32_t num);      
    void numericToVector(int64_t numeric, std::vector<uint8_t> &pinData, int32_t num);
    void initParam(Buffer *pinDecodeCredential, std::vector<uint8_t> salt);
};
