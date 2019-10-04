.class Lcom/webengage/sdk/android/utils/DataType$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/webengage/sdk/android/utils/DataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Object;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/DataType$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/DataType$a;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/DataType$a;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/DataType$a;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/webengage/sdk/android/utils/DataType$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/webengage/sdk/android/utils/DataType$a;->b:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/webengage/sdk/android/utils/DataType$a;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/DataType$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/String;)Lcom/webengage/sdk/android/utils/DataType$a;
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/utils/DataType$a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/webengage/sdk/android/utils/DataType$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/webengage/sdk/android/utils/DataType$a;
    .locals 1

    iput-object p1, p0, Lcom/webengage/sdk/android/utils/DataType$a;->b:Ljava/lang/Object;

    iget-object p1, p0, Lcom/webengage/sdk/android/utils/DataType$a;->c:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iput-object p3, p0, Lcom/webengage/sdk/android/utils/DataType$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/DataType$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/DataType$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/DataType$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/utils/DataType$a;->d:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/DataType$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/webengage/sdk/android/utils/DataType$a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, " in key "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/DataType$a;->d:Ljava/lang/String;

    return-object v0
.end method
