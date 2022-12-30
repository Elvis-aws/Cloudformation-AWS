

Scaling options
        Scaling is the ability to increase or decrease the compute capacity of your application. Scaling starts 
    with an event, or scaling action, which instructs an Auto Scaling group to either launch or terminate Amazon 
    EC2 instances.
    Maintain current instance levels at all times
        You can configure your Auto Scaling group to maintain a specified number of running instances at all 
        times. To maintain the current instance levels, Amazon EC2 Auto Scaling performs a periodic health check 
        on running instances within an Auto Scaling group. When Amazon EC2 Auto Scaling finds an unhealthy instance, 
        it terminates that instance and launches a new one.
    Scale manually
        Manual scaling is the most basic way to scale your resources, where you specify only the change in the 
        maximum, minimum, or desired capacity of your Auto Scaling group. Amazon EC2 Auto Scaling manages the 
        process of creating or terminating instances to maintain the updated capacity.
    Scale based on a schedule
        Scaling by schedule means that scaling actions are performed automatically as a function of time and 
        date. This is useful when you know exactly when to increase or decrease the number of instances in your 
        group, simply because the need arises on a predictable schedule
    Scale based on demand
        A more advanced way to scale your resources, using dynamic scaling, lets you define a scaling policy 
        that dynamically resizes your Auto Scaling group to meet changes in demand. For example, lets say that 
        you have a web application that currently runs on two instances and you want the CPU utilization of the 
        Auto Scaling group to stay at around 50 percent when the load on the application changes. This method 
        is useful for scaling in response to changing conditions, when you dont know when those conditions will 
        change.
        Amazon EC2 Auto Scaling supports the following types of dynamic scaling policies
            Target tracking scaling
                Increase and decrease the current capacity of the group based on a Amazon CloudWatch metric and 
                a target value. It works similar to the way that your thermostat maintains the temperature of 
                your home—you select a temperature and the thermostat does the rest.
            Step scaling
                Increase and decrease the current capacity of the group based on a set of scaling adjustments, 
                known as step adjustments, that vary based on the size of the alarm breach. Set high and low alarm 
                threshold.
                Step adjustments for step scaling
                    - A lower bound for the metric value
                    - An upper bound for the metric value
                    - The amount by which to scale, based on the scaling adjustment type
            Simple scaling
                Increase and decrease the current capacity of the group based on a single scaling adjustment, with 
                a cooldown period between each scaling activity. You need an alarm as well. Set high and low alarm 
                threshold. Cooldown periods help to prevent the initiation of additional scaling activities before 
                the effects of previous activities are visible.
            If you are scaling based on a metric that increases or decreases proportionally to the number of 
            instances in an Auto Scaling group, we recommend that you use target tracking scaling policies. Otherwise, 
            we recommend that you use step scaling policies.
            With target tracking, an Auto Scaling group scales in direct proportion to the actual load on your 
            application. That means that in addition to meeting the immediate need for capacity in response to 
            load changes, a target tracking policy can also adapt to load changes that take place over time, 
            for example, due to seasonal variations. By default, new Auto Scaling groups start without any scaling 
            policies. When you use an Auto Scaling group without any form of dynamic scaling, it doesnt scale on 
            it own unless you set up scheduled scaling or predictive scaling.
    Use predictive scaling
        You can also combine predictive scaling and dynamic scaling (proactive and reactive approaches, 
        respectively) to scale your EC2 capacity faster. Use predictive scaling to increase the number of EC2 
        instances in your Auto Scaling group in advance of daily and weekly patterns in traffic flows.