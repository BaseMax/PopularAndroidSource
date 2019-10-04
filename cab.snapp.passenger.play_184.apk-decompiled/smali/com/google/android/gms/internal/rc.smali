.class final Lcom/google/android/gms/internal/rc;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/android/gms/internal/ou;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/rc;->a:Ljava/util/Stack;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/rc;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/rb;->c()[I

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-gez p0, :cond_0

    add-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    return p0
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/ou;)V
    .locals 5

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ou;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ou;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/rc;->a(I)I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/rb;->c()[I

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/rc;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/rc;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ou;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ou;->size()I

    move-result v2

    if-lt v2, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/rb;->c()[I

    move-result-object v1

    aget v0, v1, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/rc;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ou;

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/rc;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/rc;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ou;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ou;->size()I

    move-result v2

    if-ge v2, v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/rc;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ou;

    new-instance v4, Lcom/google/android/gms/internal/rb;

    invoke-direct {v4, v2, v1, v3}, Lcom/google/android/gms/internal/rb;-><init>(Lcom/google/android/gms/internal/ou;Lcom/google/android/gms/internal/ou;B)V

    move-object v1, v4

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/rb;

    invoke-direct {v0, v1, p1, v3}, Lcom/google/android/gms/internal/rb;-><init>(Lcom/google/android/gms/internal/ou;Lcom/google/android/gms/internal/ou;B)V

    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/rc;->a:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ou;->size()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/rc;->a(I)I

    move-result p1

    invoke-static {}, Lcom/google/android/gms/internal/rb;->c()[I

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    aget p1, v1, p1

    iget-object v1, p0, Lcom/google/android/gms/internal/rc;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ou;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ou;->size()I

    move-result v1

    if-ge v1, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/rc;->a:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ou;

    new-instance v1, Lcom/google/android/gms/internal/rb;

    invoke-direct {v1, p1, v0, v3}, Lcom/google/android/gms/internal/rb;-><init>(Lcom/google/android/gms/internal/ou;Lcom/google/android/gms/internal/ou;B)V

    move-object v0, v1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/rc;->a:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/rc;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/rb;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/rb;

    invoke-static {p1}, Lcom/google/android/gms/internal/rb;->a(Lcom/google/android/gms/internal/rb;)Lcom/google/android/gms/internal/ou;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/rc;->a(Lcom/google/android/gms/internal/ou;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/rb;->b(Lcom/google/android/gms/internal/rb;)Lcom/google/android/gms/internal/ou;

    move-result-object p1

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Has a new type of ByteString been created? Found "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
