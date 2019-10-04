.class Lcom/webengage/sdk/android/f;
.super Lcom/webengage/sdk/android/h;

# interfaces
.implements Lcom/webengage/sdk/android/actions/database/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/h;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "com.webengage.static.version_code"

    invoke-virtual {p0, v0, p1}, Lcom/webengage/sdk/android/f;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.webengage.session.suid"

    invoke-virtual {p0, v0, p1}, Lcom/webengage/sdk/android/f;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/webengage/sdk/android/actions/database/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/webengage/sdk/android/actions/database/o;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public a(Z)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "webengage_volatile_prefs.txt"

    const-string v1, "com.webengage.static.app_crashed"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/webengage/sdk/android/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.webengage.static.cuid"

    invoke-virtual {p0, v0, p1}, Lcom/webengage/sdk/android/f;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.webengage.static.luid"

    invoke-virtual {p0, v0, p1}, Lcom/webengage/sdk/android/f;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.webengage.static.interfaceID"

    invoke-virtual {p0, v0, p1}, Lcom/webengage/sdk/android/f;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method
