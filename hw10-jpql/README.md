# Домашняя работа №10

## Использование Hibernate

**Цель:** на практике разобрать основы Hibernate, понять как аннотации Hibernate влияют на формирование sql-запросов.

**Описание/Пошаговая инструкция выполнения домашнего задания:**

Работа должна использовать базу данных в docker-контейнере.

За основу возьмите модуль `homework-template` (класс `DbServiceDemo`).

1. Добавьте в `Client` поля адрес (`OneToOne`)

```java
class Address {
   private String street;
}
```

и телефон (`OneToMany`)

```java
class Phone {
   private String number;
}
```

2. Разметьте классы таким образом, чтобы при сохранении/чтении объекта `Client` каскадно сохранялись/читались вложенные
   объекты.

3. ВАЖНО.
   - Hibernate должен создать только три таблицы: для телефонов, адресов и клиентов.
   - При сохранении нового объекта не должно быть update-ов.

   Посмотрите логи и проверьте, что эти два требования выполняются.
