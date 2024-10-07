#include <iostream>
#include <cassert>

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
    }

private:
    float targetTemperature;
    Heater heater;
    TemperatureSensor sensor;
};

int main() {
    // 初始化一个目标温度为25摄氏度的温度控制系统
    TemperatureControlSystem tempControlSystem(25.0);

    // 模拟系统运行的控制循环
    while (true) {
        tempControlSystem.controlLoop();
        // 为了方便演示，添加一个延迟并退出循环
        std::this_thread::sleep_for(std::chrono::seconds(1));
        break;  // 这里用于简化演示，一次控制循环后退出
    }

    return 0;
}
