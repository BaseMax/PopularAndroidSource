.class final Lcom/google/android/gms/internal/rd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/android/gms/internal/pa;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/android/gms/internal/rb;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/internal/pa;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ou;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/rd;->a:Ljava/util/Stack;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/rd;->a(Lcom/google/android/gms/internal/ou;)Lcom/google/android/gms/internal/pa;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/rd;->b:Lcom/google/android/gms/internal/pa;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ou;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/rd;-><init>(Lcom/google/android/gms/internal/ou;)V

    return-void
.end method

.method private final a()Lcom/google/android/gms/internal/pa;
    .locals 2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/rd;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/rd;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/rb;

    invoke-static {v0}, Lcom/google/android/gms/internal/rb;->b(Lcom/google/android/gms/internal/rb;)Lcom/google/android/gms/internal/ou;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/rd;->a(Lcom/google/android/gms/internal/ou;)Lcom/google/android/gms/internal/pa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ou;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0
.end method

.method private final a(Lcom/google/android/gms/internal/ou;)Lcom/google/android/gms/internal/pa;
    .locals 1

    :goto_0
    instance-of v0, p1, Lcom/google/android/gms/internal/rb;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/rb;

    iget-object v0, p0, Lcom/google/android/gms/internal/rd;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/internal/rb;->a(Lcom/google/android/gms/internal/rb;)Lcom/google/android/gms/internal/ou;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/pa;

    return-object p1
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rd;->b:Lcom/google/android/gms/internal/pa;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/rd;->b:Lcom/google/android/gms/internal/pa;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/rd;->a()Lcom/google/android/gms/internal/pa;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/rd;->b:Lcom/google/android/gms/internal/pa;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
