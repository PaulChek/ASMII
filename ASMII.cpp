#include <iostream>

extern "C" {
	void start(int a);
	void pointers_types(int a);
	uint32_t SumArray(uint32_t a, uint32_t b, uint32_t c);
	int SignDivMul(int a, int b, int* prod, int* quo, int* rem);
	int SummArgs(int a, int b, int c, int16_t* sum, int* sq_sum, int* c_sum);
	int MemoryAccess(int32_t i, int32_t* v1, int32_t* v2);
	int CountFibsVals;
	uint16_t ExperimentWithDifferentSizes(uint16_t a, uint8_t b);
	char GlobalChar{ 10 };
	short GlobalShort{ 20 };
	int32_t GlobalInt{ 30 };
	int64_t Globla64int{ 0x00ABCDFFFFFFFF00 };
	int SignedMin(int a, int b, int c);
	int SignedMax(int a, int b, int c);
	int SignedMax2(int a, int b, int c);
};
template<typename T>
using function = T(*)(T a);

int main()
{
	function<int> f;
	int32_t v1{ 0 }, v2{ 0 }, v3{ 0 }, * v4{ nullptr };

    v1 = SignedMin(0xAA, 0xBB, 0xCC);
 	v2 = SignedMax(0xAA, 0xBB, 0xCC);
	v3 = SignedMax2(0xAA, 0xBB, 0xCC);




	std::cout << "min:" << v1 << '\n'
		<< "max1:" << v2 << '\n'
		<< "max2:" << v3 << '\n'
		;
}