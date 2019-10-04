package com.raizlabs.android.dbflow.structure.a;

import com.raizlabs.android.dbflow.config.FlowLog;
import java.util.HashMap;
import java.util.Map;

public class e<TModel> extends c<TModel, Map<Object, TModel>> {
    public e(int i) {
        super(new HashMap(i));
    }

    public e(Map<Object, TModel> map) {
        super(map);
    }

    public void addModel(Object obj, TModel tmodel) {
        ((Map) getCache()).put(obj, tmodel);
    }

    public TModel removeModel(Object obj) {
        return ((Map) getCache()).remove(obj);
    }

    public void clear() {
        ((Map) getCache()).clear();
    }

    public TModel get(Object obj) {
        return ((Map) getCache()).get(obj);
    }

    public void setCacheSize(int i) {
        FlowLog.Level level = FlowLog.Level.I;
        FlowLog.log(level, "The cache size for " + e.class.getSimpleName() + " is not re-configurable.");
    }
}
