.class final Lcom/webengage/sdk/android/actions/rules/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/webengage/sdk/android/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/webengage/sdk/android/actions/rules/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/webengage/sdk/android/ab;
    .locals 2

    invoke-static {}, Lcom/webengage/sdk/android/actions/rules/g;->a()Lcom/webengage/sdk/android/actions/rules/g;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/webengage/sdk/android/actions/rules/g;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/webengage/sdk/android/actions/rules/g;-><init>(Landroid/content/Context;Lcom/webengage/sdk/android/actions/rules/g$1;)V

    invoke-static {v0}, Lcom/webengage/sdk/android/actions/rules/g;->a(Lcom/webengage/sdk/android/actions/rules/g;)Lcom/webengage/sdk/android/actions/rules/g;

    :cond_0
    invoke-static {}, Lcom/webengage/sdk/android/actions/rules/g;->a()Lcom/webengage/sdk/android/actions/rules/g;

    move-result-object p1

    return-object p1
.end method
