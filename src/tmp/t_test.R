a <- c(5, 6, 7);
b <- c(2, 3, 4);
t_test <- t.test(a, b);
print("-----------start-----------");
print(t_test);
print("-----------values----------");
print("statistic:");
print(t_test$statistic);
print("parameter:");
print(t_test$parameter);
print("p.value:");
print(t_test$p.value);
print("conf.int:");
print(t_test$conf.int);
print("estimate:");
print(t_test$estimate);
print("null.value:");
print(t_test$null.value);
print("stderr:");
print(t_test$stderr);
print("alternative:");
print(t_test$alternative);
print("method:");
print(t_test$method);
print("data.name:");
print(t_test$data.name);
print("-----------end-----------");