.class public abstract Lcom/webengage/sdk/android/actions/rules/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/e;->a:Ljava/lang/String;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/webengage/sdk/android/actions/rules/a/e;->b:I

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/rules/a/e;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/e;->a:Ljava/lang/String;

    return-object v0
.end method
