package com.shop.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Component;

import com.shop.utils.CurrentPath;

@Component  //声明组件
@Aspect //  声明切面
@ComponentScan  //组件自动扫描
@EnableAspectJAutoProxy //spring自动切换JDK动态代理和CGLIB
public class AopUtil {

    /**
     * <li>Before       : 在方法执行前进行切面</li>
     * <li>execution    : 定义切面表达式</li>
     * <p>public * com.eparty.ccp.*.impl..*.*(..)
     *      <li>public :匹配所有目标类的public方法，不写则匹配所有访问权限</li>
     *      <li>第一个* :方法返回值类型，*代表所有类型 </li>
     *      <li>第二个* :包路径的通配符</li>
     *      <li>第三个..* :表示impl这个目录下所有的类，包括子目录的类</li>
     *      <li>第四个*(..) : *表示所有任意方法名,..表示任意参数</li>
     * </p>
     * @param point 切面
     */ 
    @Before("execution(* com.*.controller..*.*(..))")
    public void before(JoinPoint point) {
    	if(point == null){
    		System.out.println("获取切面错误！");
            return;
        }
        /**
         * Signature 包含了方法名、申明类型以及地址等信息
         */
        String class_name = point.getTarget().getClass().getName();
        String method_name = point.getSignature().getName();
        String ParentClass_type = point.getTarget().getClass().getGenericSuperclass().getTypeName();
        String[] split = ParentClass_type.split("\\.");
        String entityClassName = split[split.length-1];
        entityClassName = entityClassName.split(">")[0];
        
        //转化为可用的类名
        String[] classArr = class_name.split("\\.");
        class_name=classArr[classArr.length-1].split("Controller")[0];
        class_name= class_name.substring(0,1).toLowerCase()+class_name.substring(1);
        String currentPath = class_name+"/"+class_name+"_"+method_name;
        System.out.println("访问路径："+currentPath);
        CurrentPath.setCURRENTPATH(currentPath);
    }

}
