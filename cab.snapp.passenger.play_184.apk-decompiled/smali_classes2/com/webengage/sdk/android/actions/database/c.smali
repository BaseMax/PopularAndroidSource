.class public Lcom/webengage/sdk/android/actions/database/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/webengage/sdk/android/actions/database/s;


# instance fields
.field private a:Lcom/webengage/sdk/android/actions/database/e;

.field private b:Lcom/webengage/sdk/android/actions/database/j;


# direct methods
.method constructor <init>(Lcom/webengage/sdk/android/actions/database/e;Lcom/webengage/sdk/android/actions/database/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/database/c;->a:Lcom/webengage/sdk/android/actions/database/e;

    iput-object p2, p0, Lcom/webengage/sdk/android/actions/database/c;->b:Lcom/webengage/sdk/android/actions/database/j;

    return-void
.end method


# virtual methods
.method public a(Lcom/webengage/sdk/android/l;)Z
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/database/c;->a(Ljava/util/ArrayList;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/webengage/sdk/android/l;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/database/c;->a:Lcom/webengage/sdk/android/actions/database/e;

    invoke-virtual {v0, p1}, Lcom/webengage/sdk/android/actions/database/e;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/database/c;->b:Lcom/webengage/sdk/android/actions/database/j;

    invoke-virtual {v0, p1}, Lcom/webengage/sdk/android/actions/database/j;->a(Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
