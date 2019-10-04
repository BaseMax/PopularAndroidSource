.class public final Lcab/snapp/c/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callNumber(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.CALL_PHONE"

    aput-object v2, v0, v1

    .line 30
    new-instance v2, Lcab/snapp/c/h$1;

    invoke-direct {v2, p0, p1}, Lcab/snapp/c/h$1;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    new-array p1, v1, [Ljava/lang/String;

    invoke-static {p0, v0, v2, p1}, Lcab/snapp/c/g;->getPermission(Landroid/app/Activity;[Ljava/lang/String;Lcab/snapp/c/g$a;[Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
