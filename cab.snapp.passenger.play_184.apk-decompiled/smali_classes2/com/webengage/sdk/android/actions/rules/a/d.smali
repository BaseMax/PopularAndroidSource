.class public Lcom/webengage/sdk/android/actions/rules/a/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/d;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/d;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/rules/a/d;->a:Ljava/lang/String;

    invoke-static {}, Lcom/webengage/sdk/android/actions/rules/a/c;->a()Lcom/webengage/sdk/android/actions/rules/a/c;

    move-result-object p1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/actions/rules/a/c;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/rules/a/d;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/d;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/d;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/rules/a/d;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/d;->b:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/webengage/sdk/android/actions/rules/a/c;->a()Lcom/webengage/sdk/android/actions/rules/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/rules/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/actions/rules/a/c;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/d;->b:Ljava/util/List;

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/webengage/sdk/android/actions/rules/a/c;->a()Lcom/webengage/sdk/android/actions/rules/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/rules/a/d;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/actions/rules/a/c;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/d;->a:Ljava/lang/String;

    return-object v0
.end method
