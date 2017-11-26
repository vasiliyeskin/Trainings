package ru.screensaver;

import javafx.util.Pair;
import org.springframework.beans.factory.ObjectFactory;
import org.springframework.beans.factory.config.Scope;
import org.springframework.lang.Nullable;

import java.time.LocalTime;
import java.util.HashMap;
import java.util.Map;

public class PeriodicalScopeConfigurer implements Scope {
    Map<String, Pair<LocalTime, Object>> mapc = new HashMap<>();

    @Override
    public Object get(String s, ObjectFactory<?> objectFactory) {
        if(mapc.containsKey(s))
        {
            Pair<LocalTime,Object> p = mapc.get(s);
            int duration = LocalTime.now().getSecond() - p.getKey().getSecond();
            if(duration > 3)
            {
                mapc.put(s, new Pair<>(LocalTime.now(),objectFactory.getObject()));
            }
        }
        else
            mapc.put(s, new Pair<>(LocalTime.now(),objectFactory.getObject()));
        return mapc.get(s).getValue();
    }

    @Nullable
    @Override
    public Object remove(String s) {
        return null;
    }

    @Override
    public void registerDestructionCallback(String s, Runnable runnable) {

    }

    @Nullable
    @Override
    public Object resolveContextualObject(String s) {
        return null;
    }

    @Nullable
    @Override
    public String getConversationId() {
        return null;
    }
}
