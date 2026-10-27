package com.aids;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

@Aspect
@Component
public class AuditLoggingAspect {

    @Before("execution(* com.aids.EmployeeServiceImpl.*(..))")
    public void logBefore(JoinPoint joinPoint) {

        System.out.println(
                "[AUDIT] " + LocalDateTime.now()
                + " - Starting method: "
                + joinPoint.getSignature().getName());
    }

    @AfterReturning("execution(* com.aids.EmployeeServiceImpl.*(..))")
    public void logAfter(JoinPoint joinPoint) {

        System.out.println(
                "[AUDIT] " + LocalDateTime.now()
                + " - Completed method: "
                + joinPoint.getSignature().getName());
    }
}

