# Principles of Computer Organization

## 1 Overview of Computer System

### 1.1 Composition of Computer System

r with n bits represents a range of 0 to 2n−1.
If it exceeds the range, it will overflow, indicating that the computer cannot process such a large number at once.
The smallest number that can be represented: 0 (all 0)
The maximum number that can be represented: 2n−1 (all 1)
2.2.2 implementation of addition and subtraction operations
Addition![](./pics/principles_of_computer_organization/computer_system.png)r with n bits represents a range of 0 to 2n−1.
If it exceeds the range, it will overflow, indicating that the computer cannot process such a large number at once.
The smallest number that can be represented: 0 (all 0)
The maximum number that can be represented: 2n−1 (all 1)
2.2.2 implementation of addition and subtraction operations
Addition

* **Instruction word length**: the total length of an instruction.
* **Machine word length**: the maximum number of binary data bits that the CPU can process in one integer operation.
* **Memory word length**: the number of bits of binary code contained in a storage unit.

### 1.2 The Development of Computer

#### 1.2.1 hardware development

> The era of electron tube

* the logic element: **electron tube**
* Large size, high power consumption, and slow computation speed.

> The era of transistor

* the logic element: **transistor**
* The volume has been greatly reduced, power consumption has been reduced, and the computational speed has been qualitatively improved, leading to the emergence of object-oriented advanced programming languages and the embryonic form of operating systems.

> The era of small and medium-sized integrated circuits

* Integrate components on a substrate

> The era of large scale integration and VLSI (Vary Large Scale Integration)

* The emergence of microprocessors and microcomputers.

#### 1.2.2 software development

> applicaiton software

> operational software

#### 1.2.3 two trends in computer development

* **More miniature and versatile**: Microcomputers are developing towards a more miniaturized, networked, high-performance, and versatile direction.
* **Larger and ultra fast**: Supercomputers are developing towards greater size, ultra high parallel processing, and intelligence. 

### 1.3 Basic Composition of Computer Hardware

> The Design Concept of Stored Programs:   
> &emsp;&emsp;The instructions are input into the main memory of the computer in the form of binary code, and then the first instruction of the program is executed according to its first address in the main memory, and then other instructions are executed according to the specified sequence of the program until the end of program execution.

#### 1.3.1 early von Neumann machine structure

![](./pics/principles_of_computer_organization/early_von_neumann_machine_structure.png)

#### 1.3.2 modern computer architecture

![](./pics/principles_of_computer_organization/modern_computer_structure.png)

### 1.4 The Hierarchical Structure of Computer Systems
    
### 1.5 Mance Metrics

#### 1.5.1 the main memory

> MAR (Memory Address Register)

* Reflect the number of storage units.

> MDR (Memeory Data Register)

* Reflect the length of each storage unit.
* The length of MDR equals to the length of each storage unit in the main memory.

> Total capacity

$$
cap = n \times len \space\space (bit)
$$
$$
cap = n \times len \div 8 \space\space (byte)
$$
$cap$: the total capacity
$n$: the number of storage units
$len$: the length of each storage unit

> Nth power of 2

![](./pics/principles_of_computer_organization/nth_power_of_2.png)

#### 1.5.2 the central processing unit (CPU)

> CPU main frequency: The frequency of digital pulse signal oscillation within the CPU.

![](./pics/principles_of_computer_organization/cpu_performance_metrics.png)

#### 1.5.3 overall performance indicators

## 2 Representation and Operation of Data in Computer

### 2.1 Carry counting system	

#### 2.1.1 reason for using binary

* It can be represented by a physical device with two stable states, which is low-cost and easy to implement.
* 0 and 1 exactly correspond to the false and true values of logical values, making it convenient to implement logical operations.
* It is convenient to use logic gate circuits to perform arithmetic operations.

#### 2.1.2 conversion from binary to octal and hexadecimal

![](./pics/principles_of_computer_organization/binary_to_octal_and_hexadecimal.png)
Left high fill 0, right low fill 0.

#### 2.1.3 convert r base number to decimal number

#### 2.1.4 convert decimal number to r base number

### 2.2 Unsigned Integer

#### 2.2.1 representation in hardware

![](./pics/principles_of_computer_organization/unsigned_int_representation_in_hardware.png)
* All binary bits are numerical bits without sign bits, and the bit weight of the i-th bit is $2^{i-1}$.
* An unsigned integer with n bits represents a range of $0$ to $2^{n}-1$. 
    * If it exceeds the range, it will overflow, indicating that the computer cannot process such a large number at once.
* The smallest number that can be represented:  $0$ (all 0)
* The maximum number that can be represented: $2^{n}-1$ (all 1)

#### 2.2.2 implementation of addition and subtraction operations

> Addition

* Starting from the lowest bit, add by bit and carry to the higher bit.

> Subtraction

* The 'minuend' remains unchanged, while the 'subtract' is all negated in place. After negating, one is added, and subtraction becomes addition.
* Starting from the lowest bit, add by bit and carry towards the higher bit.
* 

### 2.3 Signed Integer

## 3 Storage System

### 3.1 Basic concepts

#### 3.1.1 hierarchical structure

![](./pics/principles_of_computer_organization/storage_hierarchical_structure_pyramid.png)
![](./pics/principles_of_computer_organization/storage_hierarchical_structure.png)

#### 3.1.2 

## 4 Instruction Set

## 5 Central Processing Unit

## 6 Bus


## 7 I/O System