.class public abstract Lcom/google/android/gms/internal/os;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/qs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/or<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/os<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/qs;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/internal/or;)Lcom/google/android/gms/internal/os;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/os;->zzcvh()Lcom/google/android/gms/internal/os;

    move-result-object v0

    return-object v0
.end method

.method public abstract zza(Lcom/google/android/gms/internal/pd;Lcom/google/android/gms/internal/pk;)Lcom/google/android/gms/internal/os;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/pd;",
            "Lcom/google/android/gms/internal/pk;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/pd;Lcom/google/android/gms/internal/pk;)Lcom/google/android/gms/internal/qs;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/os;->zza(Lcom/google/android/gms/internal/pd;Lcom/google/android/gms/internal/pk;)Lcom/google/android/gms/internal/os;

    move-result-object p1

    return-object p1
.end method

.method public abstract zzcvh()Lcom/google/android/gms/internal/os;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qs;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/os;->zzcxq()Lcom/google/android/gms/internal/qr;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/or;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/os;->a(Lcom/google/android/gms/internal/or;)Lcom/google/android/gms/internal/os;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
