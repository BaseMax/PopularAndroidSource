.class final Lcom/a/a/c/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lio/fabric/sdk/android/services/c/c;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/services/c/c;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/a/a/c/ac;->a:Lio/fabric/sdk/android/services/c/c;

    return-void
.end method

.method public static create(Lio/fabric/sdk/android/services/c/c;Lcom/a/a/c/j;)Lcom/a/a/c/ac;
    .locals 5

    .line 25
    invoke-interface {p0}, Lio/fabric/sdk/android/services/c/c;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preferences_migration_complete"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 26
    new-instance v0, Lio/fabric/sdk/android/services/c/d;

    invoke-direct {v0, p1}, Lio/fabric/sdk/android/services/c/d;-><init>(Lio/fabric/sdk/android/i;)V

    .line 28
    invoke-interface {p0}, Lio/fabric/sdk/android/services/c/c;->get()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v3, "always_send_reports_opt_in"

    invoke-interface {p1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    const/4 v4, 0x1

    if-nez p1, :cond_0

    .line 29
    invoke-interface {v0}, Lio/fabric/sdk/android/services/c/c;->get()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 31
    invoke-interface {v0}, Lio/fabric/sdk/android/services/c/c;->get()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 33
    invoke-interface {p0}, Lio/fabric/sdk/android/services/c/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 34
    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 33
    invoke-interface {p0, p1}, Lio/fabric/sdk/android/services/c/c;->save(Landroid/content/SharedPreferences$Editor;)Z

    .line 36
    :cond_1
    invoke-interface {p0}, Lio/fabric/sdk/android/services/c/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/fabric/sdk/android/services/c/c;->save(Landroid/content/SharedPreferences$Editor;)Z

    .line 38
    :cond_2
    new-instance p1, Lcom/a/a/c/ac;

    invoke-direct {p1, p0}, Lcom/a/a/c/ac;-><init>(Lio/fabric/sdk/android/services/c/c;)V

    return-object p1
.end method
