.class public final Lcom/google/firebase/a/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/firebase/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/firebase/a/c;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzcjr()Lcom/google/firebase/a/c;
    .locals 1

    sget-object v0, Lcom/google/firebase/a/c;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/a/c;

    return-object v0
.end method

.method public static zzcjs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static zzew(Landroid/content/Context;)Lcom/google/firebase/a/c;
    .locals 2

    sget-object p0, Lcom/google/firebase/a/c;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/google/firebase/a/c;

    invoke-direct {v0}, Lcom/google/firebase/a/c;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object p0, Lcom/google/firebase/a/c;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/a/c;

    return-object p0
.end method

.method public static zzg(Lcom/google/firebase/b;)V
    .locals 0

    return-void
.end method

.method public static zzrq(Ljava/lang/String;)Lcom/google/firebase/d;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
