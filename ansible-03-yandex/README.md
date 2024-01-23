# Домашнее задание к занятию 3 «Использование Ansible»

## Основная часть

1. Допишите playbook: нужно сделать ещё один play, который устанавливает и настраивает LightHouse.
2. При создании tasks рекомендую использовать модули: `get_url`, `template`, `yum`, `apt`.
3. Tasks должны: скачать статику LightHouse, установить Nginx или любой другой веб-сервер, настроить его конфиг для открытия LightHouse, запустить веб-сервер.
4. Подготовьте свой inventory-файл `prod.yml`.
5. Запустите `ansible-lint site.yml` и исправьте ошибки, если они есть.
##### Ответ:
![alt text](./screenshots/screenshots_00.png)
6. Попробуйте запустить playbook на этом окружении с флагом `--check`.
7. Запустите playbook на `prod.yml` окружении с флагом `--diff`. Убедитесь, что изменения на системе произведены.
##### Ответ:
![alt text](./screenshots/screenshots_1.png)
![alt text](./screenshots/screenshots_2.png)
![alt text](./screenshots/screenshots_3.png)
![alt text](./screenshots/screenshots_4.png)
![alt text](./screenshots/screenshots_5.png)
8. Повторно запустите playbook с флагом `--diff` и убедитесь, что playbook идемпотентен.
##### Ответ:
![alt text](./screenshots/screenshots_6.png)
![alt text](./screenshots/screenshots_7.png)
9. Подготовьте README.md-файл по своему playbook. В нём должно быть описано: что делает playbook, какие у него есть параметры и теги.
10. Готовый playbook выложите в свой репозиторий, поставьте тег `08-ansible-03-yandex` на фиксирующий коммит, в ответ предоставьте ссылку на него.
##### Ответ:
Ссылка на тег - https://github.com/AlexGAVaz/ansible/releases/tag/08-ansible-03-yandex


