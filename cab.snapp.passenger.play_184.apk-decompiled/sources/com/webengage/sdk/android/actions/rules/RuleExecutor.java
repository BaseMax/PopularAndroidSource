package com.webengage.sdk.android.actions.rules;

import com.webengage.sdk.android.actions.rules.a.e;
import com.webengage.sdk.android.actions.rules.a.g;
import com.webengage.sdk.android.utils.WebEngageConstant;
import java.util.List;
import java.util.Map;

public abstract class RuleExecutor {
    public abstract Object evaluateInfixRule(String str);

    public abstract Object evaluatePostfixRule(List<String> list);

    /* access modifiers changed from: protected */
    public abstract List<String> evaluateRulesByCategory(WebEngageConstant.c cVar);

    /* access modifiers changed from: protected */
    public abstract List<String> filterRenderingIds(List<String> list, WebEngageConstant.c cVar);

    /* access modifiers changed from: protected */
    public abstract List<d> getEventCriteriasForEvent(String str);

    public abstract e getFunction(String str);

    public abstract g getOperator(String str);

    /* access modifiers changed from: protected */
    public abstract void reset();

    /* access modifiers changed from: protected */
    public abstract void setCompetingIds(List<String> list);

    /* access modifiers changed from: protected */
    public abstract void setEventCriteriaMap(Map<String, List<d>> map);

    /* access modifiers changed from: protected */
    public abstract void setRuleMap(Map<String, e> map);
}
