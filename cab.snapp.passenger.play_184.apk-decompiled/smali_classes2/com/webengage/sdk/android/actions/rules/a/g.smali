.class public abstract Lcom/webengage/sdk/android/actions/rules/a/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field b:I

.field c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/webengage/sdk/android/actions/rules/a/g;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/g;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/webengage/sdk/android/actions/rules/a/g;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/webengage/sdk/android/actions/rules/a/g;->c:Z

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/rules/a/g;->a:Ljava/lang/String;

    iput p2, p0, Lcom/webengage/sdk/android/actions/rules/a/g;->b:I

    iput-boolean p3, p0, Lcom/webengage/sdk/android/actions/rules/a/g;->c:Z

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/webengage/sdk/android/actions/rules/a/g;->b:I

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/actions/rules/a/g;->c:Z

    return v0
.end method
