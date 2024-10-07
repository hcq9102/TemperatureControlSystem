#include <iostream>
#include <cassert>
#include <thread>  // 添加线程库的头文件
#include <chrono>  // 添加时间库的头文件
#include <vector>  // 添加vector用于数据记录

// 模拟传感器和加热器的接口类
class TemperatureSensor {
public:
    float readTemperature() {
        // 假设从传感器读取温度值，实际场景中会从硬件获取数据
        return 22.5; // 返回一个模拟的温度值
    }
};

class Heater {
public:
    void turnOn() {
        std::cout << "Heater is turned ON." << std::endl;
        isOn = true;
    }

    void turnOff() {
        std::cout << "Heater is turned OFF." << std::endl;
        isOn = false;
    }

    bool getStatus() const {
        return isOn;
    }

private:
    bool isOn = false;
};

// 温度控制系统类
class TemperatureControlSystem {
public:
    TemperatureControlSystem(float targetTemperature)
        : targetTemperature(targetTemperature), heater(), sensor() {}

    void controlLoop() {
        float currentTemperature = sensor.readTemperature();
        std::cout << "Current Temperature: " << currentTemperature << " C" << std::endl;

        if (currentTemperature < targetTemperature) {
            heater.turnOn();
        } else {
            heater.turnOff();
        }

        // 添加断言来验证加热器状态是否正确
        if (currentTemperature < targetTemperature) {
            assert(heater.getStatus() == true && "Heater should be ON when current temperature is below target.");
        } else {
            assert(heater.getStatus() == false && "Heater should be OFF when current temperature is at or above target.");
        }

        // 记录温度数据
        temperatureHistory.push_back(currentTemperature);
    }

    void printTemperatureHistory() const {
        std::cout << "Temperature History:" << std::endl;
        for (float temp : temperatureHistory) {
            std::cout << temp << " C" << std::endl;
        }
    }

private:
    float targetTemperature;
    Heater heater;
    TemperatureSensor sensor;
    std::vector<float> temperatureHistory; // 记录温度的历史数据
};

int main() {
    // 初始化一个目标温度为25摄氏度的温度控制系统
    TemperatureControlSystem tempControlSystem(25.0);

    // 模拟系统运行的控制循环
    for (int i = 0; i < 5; ++i) {  // 运行5次控制循环，模拟系统一段时间内的运行
        tempControlSystem.controlLoop();
        std::this_thread::sleep_for(std::chrono::seconds(1));
    }

    // 打印温度历史数据
    tempControlSystem.printTemperatureHistory();

    return 0;
}