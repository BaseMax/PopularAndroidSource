.class Lcom/webengage/sdk/android/actions/database/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/webengage/sdk/android/actions/database/s;


# instance fields
.field a:Lcom/webengage/sdk/android/actions/database/e;

.field b:Lcom/webengage/sdk/android/actions/database/m;

.field c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/webengage/sdk/android/actions/database/e;Lcom/webengage/sdk/android/actions/database/m;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/database/d;->a:Lcom/webengage/sdk/android/actions/database/e;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/database/d;->b:Lcom/webengage/sdk/android/actions/database/m;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/database/d;->c:Landroid/content/Context;

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/database/d;->a:Lcom/webengage/sdk/android/actions/database/e;

    iput-object p2, p0, Lcom/webengage/sdk/android/actions/database/d;->b:Lcom/webengage/sdk/android/actions/database/m;

    iput-object p3, p0, Lcom/webengage/sdk/android/actions/database/d;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/webengage/sdk/android/l;)Z
    .locals 2

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/database/d;->a:Lcom/webengage/sdk/android/actions/database/e;

    invoke-virtual {v0, p1}, Lcom/webengage/sdk/android/actions/database/e;->a(Lcom/webengage/sdk/android/l;)Z

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/database/d;->a:Lcom/webengage/sdk/android/actions/database/e;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/database/e;->a()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-lt p1, v1, :cond_0

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/r;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/database/d;->a:Lcom/webengage/sdk/android/actions/database/e;

    invoke-virtual {p1, v1}, Lcom/webengage/sdk/android/actions/database/e;->a(I)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/database/d;->b:Lcom/webengage/sdk/android/actions/database/m;

    invoke-virtual {v1, p1}, Lcom/webengage/sdk/android/actions/database/m;->a(Ljava/util/ArrayList;)Z

    :cond_1
    return v0
.end method
