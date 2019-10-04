.class public Lcom/apptentive/android/sdk/module/engagement/logic/LogicalClause;
.super Ljava/lang/Object;
.source "LogicalClause.java"

# interfaces
.implements Lcom/apptentive/android/sdk/module/engagement/logic/Clause;


# instance fields
.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/module/engagement/logic/Clause;",
            ">;"
        }
    .end annotation
.end field

.field private final operator:Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

.field private final operatorName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalClause;->operatorName:Ljava/lang/String;

    .line 34
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalClause;->operatorName:Ljava/lang/String;

    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    move-result-object p1

    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalClause;->operator:Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalClause;->children:Ljava/util/List;

    .line 36
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "  + LogicalClause of type \"%s\""

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalClause;->operatorName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1, v0, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    instance-of p1, p2, Lorg/json/JSONArray;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 38
    check-cast p2, Lorg/json/JSONArray;

    .line 39
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ge v4, p1, :cond_3

    .line 40
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 41
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalClause;->children:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/module/engagement/logic/ClauseParser;->parse(Ljava/lang/String;Ljava/lang/Object;)Lcom/apptentive/android/sdk/module/engagement/logic/Clause;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 43
    :cond_0
    instance-of p1, p2, Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    .line 44
    check-cast p2, Lorg/json/JSONObject;

    .line 45
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 46
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 47
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 48
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 49
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalClause;->children:Ljava/util/List;

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/apptentive/android/sdk/module/engagement/logic/ClauseParser;->parse(Ljava/lang/String;Ljava/lang/Object;)Lcom/apptentive/android/sdk/module/engagement/logic/Clause;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 51
    :cond_1
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalClause;->children:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/apptentive/android/sdk/module/engagement/logic/ClauseParser;->parse(Ljava/lang/String;Ljava/lang/Object;)Lcom/apptentive/android/sdk/module/engagement/logic/Clause;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 55
    :cond_2
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v0, "Unrecognized LogicalClause: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v4

    invoke-static {p1, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private evaluateOperator(Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;Lcom/apptentive/android/sdk/util/IndentPrinter;)Z
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalClause;->operator:Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;->$and:Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 78
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalClause;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptentive/android/sdk/module/engagement/logic/Clause;

    .line 79
    invoke-interface {v1, p1, p2}, Lcom/apptentive/android/sdk/module/engagement/logic/Clause;->evaluate(Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;Lcom/apptentive/android/sdk/util/IndentPrinter;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_1
    return v3

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalClause;->operator:Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;->$or:Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    if-ne v0, v1, :cond_5

    .line 88
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalClause;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptentive/android/sdk/module/engagement/logic/Clause;

    .line 89
    invoke-interface {v1, p1, p2}, Lcom/apptentive/android/sdk/module/engagement/logic/Clause;->evaluate(Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;Lcom/apptentive/android/sdk/util/IndentPrinter;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v3

    :cond_4
    return v2

    .line 97
    :cond_5
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalClause;->operator:Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;->$not:Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    if-ne v0, v1, :cond_7

    .line 98
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalClause;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 101
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalClause;->children:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apptentive/android/sdk/module/engagement/logic/Clause;

    .line 102
    invoke-interface {v0, p1, p2}, Lcom/apptentive/android/sdk/module/engagement/logic/Clause;->evaluate(Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;Lcom/apptentive/android/sdk/util/IndentPrinter;)Z

    move-result p1

    xor-int/2addr p1, v3

    return p1

    .line 99
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "$not condition must have exactly one child, has ."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalClause;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_7
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p2, "Unsupported operation: \"%s\" => false"

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalClause;->operatorName:Ljava/lang/String;

    aput-object v1, v0, v2

    invoke-static {p1, p2, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    sget-object p1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string p2, "  - </%s>"

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalClause;->operator:Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p1, p2, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method


# virtual methods
.method public evaluate(Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;Lcom/apptentive/android/sdk/util/IndentPrinter;)Z
    .locals 5

    .line 62
    sget-object v0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;->$and:Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalClause;->operator:Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalClause;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const-string v3, "- %s:"

    .line 64
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalClause;->operator:Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    invoke-virtual {v4}, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {p2, v3, v2}, Lcom/apptentive/android/sdk/util/IndentPrinter;->print(Ljava/lang/String;[Ljava/lang/Object;)Lcom/apptentive/android/sdk/util/IndentPrinter;

    .line 65
    invoke-virtual {p2}, Lcom/apptentive/android/sdk/util/IndentPrinter;->startBlock()Lcom/apptentive/android/sdk/util/IndentPrinter;

    .line 68
    :cond_2
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalClause;->evaluateOperator(Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;Lcom/apptentive/android/sdk/util/IndentPrinter;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 71
    invoke-virtual {p2}, Lcom/apptentive/android/sdk/util/IndentPrinter;->endBlock()Lcom/apptentive/android/sdk/util/IndentPrinter;

    :cond_3
    return p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/apptentive/android/sdk/util/IndentPrinter;->endBlock()Lcom/apptentive/android/sdk/util/IndentPrinter;

    :cond_4
    throw p1
.end method
