.class public Lcom/webengage/sdk/android/actions/rules/h;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/webengage/sdk/android/actions/rules/RuleExecutor;

.field static b:Lcom/webengage/sdk/android/actions/rules/RuleExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/webengage/sdk/android/actions/rules/RuleExecutor;
    .locals 2

    sget-object v0, Lcom/webengage/sdk/android/actions/rules/h;->a:Lcom/webengage/sdk/android/actions/rules/RuleExecutor;

    if-nez v0, :cond_1

    const-class v0, Lcom/webengage/sdk/android/actions/rules/h;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/webengage/sdk/android/actions/rules/h;->a:Lcom/webengage/sdk/android/actions/rules/RuleExecutor;

    if-nez v1, :cond_0

    new-instance v1, Lcom/webengage/sdk/android/actions/rules/i;

    invoke-direct {v1}, Lcom/webengage/sdk/android/actions/rules/i;-><init>()V

    sput-object v1, Lcom/webengage/sdk/android/actions/rules/h;->a:Lcom/webengage/sdk/android/actions/rules/RuleExecutor;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/webengage/sdk/android/actions/rules/h;->a:Lcom/webengage/sdk/android/actions/rules/RuleExecutor;

    return-object v0
.end method

.method public static b()Lcom/webengage/sdk/android/actions/rules/RuleExecutor;
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/actions/rules/h;->b:Lcom/webengage/sdk/android/actions/rules/RuleExecutor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/webengage/sdk/android/actions/rules/j;

    invoke-direct {v0}, Lcom/webengage/sdk/android/actions/rules/j;-><init>()V

    sput-object v0, Lcom/webengage/sdk/android/actions/rules/h;->b:Lcom/webengage/sdk/android/actions/rules/RuleExecutor;

    :cond_0
    sget-object v0, Lcom/webengage/sdk/android/actions/rules/h;->b:Lcom/webengage/sdk/android/actions/rules/RuleExecutor;

    return-object v0
.end method
