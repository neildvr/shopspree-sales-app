!function(e){e.extend(e.validator.messages,{required:"\u041f\u043e\u043b\u0435\u0442\u043e \u0435 \u0437\u0430\u0434\u044a\u043b\u0436\u0438\u0442\u0435\u043b\u043d\u043e.",remote:"\u041c\u043e\u043b\u044f, \u0432\u044a\u0432\u0435\u0434\u0435\u0442\u0435 \u043f\u0440\u0430\u0432\u0438\u043b\u043d\u0430\u0442\u0430 \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442.",email:"\u041c\u043e\u043b\u044f, \u0432\u044a\u0432\u0435\u0434\u0435\u0442\u0435 \u0432\u0430\u043b\u0438\u0434\u0435\u043d email.",url:"\u041c\u043e\u043b\u044f, \u0432\u044a\u0432\u0435\u0434\u0435\u0442\u0435 \u0432\u0430\u043b\u0438\u0434\u043d\u043e URL.",date:"\u041c\u043e\u043b\u044f, \u0432\u044a\u0432\u0435\u0434\u0435\u0442\u0435 \u0432\u0430\u043b\u0438\u0434\u043d\u0430 \u0434\u0430\u0442\u0430.",dateISO:"\u041c\u043e\u043b\u044f, \u0432\u044a\u0432\u0435\u0434\u0435\u0442\u0435 \u0432\u0430\u043b\u0438\u0434\u043d\u0430 \u0434\u0430\u0442\u0430 (ISO).",number:"\u041c\u043e\u043b\u044f, \u0432\u044a\u0432\u0435\u0434\u0435\u0442\u0435 \u0432\u0430\u043b\u0438\u0434\u0435\u043d \u043d\u043e\u043c\u0435\u0440.",digits:"\u041c\u043e\u043b\u044f, \u0432\u044a\u0432\u0435\u0434\u0435\u0442\u0435 \u0441\u0430\u043c\u043e \u0446\u0438\u0444\u0440\u0438",creditcard:"\u041c\u043e\u043b\u044f, \u0432\u044a\u0432\u0435\u0434\u0435\u0442\u0435 \u0432\u0430\u043b\u0438\u0434\u0435\u043d \u043d\u043e\u043c\u0435\u0440 \u043d\u0430 \u043a\u0440\u0435\u0434\u0438\u0442\u043d\u0430 \u043a\u0430\u0440\u0442\u0430.",equalTo:"\u041c\u043e\u043b\u044f, \u0432\u044a\u0432\u0435\u0434\u0435\u0442\u0435 \u0441\u044a\u0449\u0430\u0442\u0430 \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442 \u043e\u0442\u043d\u043e\u0432\u043e.",accept:"\u041c\u043e\u043b\u044f, \u0432\u044a\u0432\u0435\u0434\u0435\u0442\u0435 \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442 \u0441 \u0432\u0430\u043b\u0438\u0434\u043d\u043e \u0440\u0430\u0437\u0448\u0438\u0440\u0435\u043d\u0438\u0435.",maxlength:e.validator.format("\u041c\u043e\u043b\u044f, \u0432\u044a\u0432\u0435\u0434\u0435\u0442\u0435 \u043f\u043e\u0432\u0435\u0447\u0435 \u043e\u0442 {0} \u0441\u0438\u043c\u0432\u043e\u043b\u0430."),minlength:e.validator.format("\u041c\u043e\u043b\u044f, \u0432\u044a\u0432\u0435\u0434\u0435\u0442\u0435 \u043f\u043e\u043d\u0435 {0} \u0441\u0438\u043c\u0432\u043e\u043b\u0430."),rangelength:e.validator.format("\u041c\u043e\u043b\u044f, \u0432\u044a\u0432\u0435\u0434\u0435\u0442\u0435 \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442 \u0441 \u0434\u044a\u043b\u0436\u0438\u043d\u0430 \u043c\u0435\u0436\u0434\u0443 {0} \u0438 {1} \u0441\u0438\u043c\u0432\u043e\u043b\u0430."),range:e.validator.format("\u041c\u043e\u043b\u044f, \u0432\u044a\u0432\u0435\u0434\u0435\u0442\u0435 \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442 \u043c\u0435\u0436\u0434\u0443 {0} \u0438 {1}."),max:e.validator.format("\u041c\u043e\u043b\u044f, \u0432\u044a\u0432\u0435\u0434\u0435\u0442\u0435 \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442 \u043f\u043e-\u043c\u0430\u043b\u043a\u0430 \u0438\u043b\u0438 \u0440\u0430\u0432\u043d\u0430 \u043d\u0430 {0}."),min:e.validator.format("\u041c\u043e\u043b\u044f, \u0432\u044a\u0432\u0435\u0434\u0435\u0442\u0435 \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442 \u043f\u043e-\u0433\u043e\u043b\u044f\u043c\u0430 \u0438\u043b\u0438 \u0440\u0430\u0432\u043d\u0430 \u043d\u0430 {0}.")})}(jQuery);