.class public final Lcom/google/android/gms/internal/ps$a;
.super Lcom/google/android/gms/internal/os;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ps<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ps$a<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/os<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected a:Lcom/google/android/gms/internal/ps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method private a()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ps$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ps$a;->a:Lcom/google/android/gms/internal/ps;

    sget v1, Lcom/google/android/gms/internal/ps$f;->zzphi:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ps;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ps;

    iget-object v1, p0, Lcom/google/android/gms/internal/ps$a;->a:Lcom/google/android/gms/internal/ps;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ps$a;->a(Lcom/google/android/gms/internal/ps;Lcom/google/android/gms/internal/ps;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ps$a;->a:Lcom/google/android/gms/internal/ps;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ps$a;->c:Z

    :cond_0
    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ps;Lcom/google/android/gms/internal/ps;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ps$e;->zzphb:Lcom/google/android/gms/internal/ps$e;

    sget v1, Lcom/google/android/gms/internal/ps$f;->zzphd:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ps;->b:Lcom/google/android/gms/internal/rv;

    iget-object p1, p1, Lcom/google/android/gms/internal/ps;->b:Lcom/google/android/gms/internal/rv;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ps$g;->zza(Lcom/google/android/gms/internal/rv;Lcom/google/android/gms/internal/rv;)Lcom/google/android/gms/internal/rv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ps;->b:Lcom/google/android/gms/internal/rv;

    return-void
.end method

.method private final b()Lcom/google/android/gms/internal/ps$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ps$a;->a()V

    :try_start_0
    sget v0, Lcom/google/android/gms/internal/ps$f;->zzphg:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_0
    throw v0
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/internal/or;)Lcom/google/android/gms/internal/os;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ps;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ps$a;->zza(Lcom/google/android/gms/internal/ps;)Lcom/google/android/gms/internal/ps$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ps$a;->b:Lcom/google/android/gms/internal/ps;

    check-cast v0, Lcom/google/android/gms/internal/ps;

    sget v1, Lcom/google/android/gms/internal/ps$f;->zzphj:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ps;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ps$a;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ps$a;->c:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ps$a;->a:Lcom/google/android/gms/internal/ps;

    sget v2, Lcom/google/android/gms/internal/ps$f;->zzphh:I

    iget-object v1, v1, Lcom/google/android/gms/internal/ps;->b:Lcom/google/android/gms/internal/rv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/rv;->zzbiy()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ps$a;->c:Z

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ps$a;->a:Lcom/google/android/gms/internal/ps;

    check-cast v1, Lcom/google/android/gms/internal/ps;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ps$a;->zza(Lcom/google/android/gms/internal/ps;)Lcom/google/android/gms/internal/ps$a;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ps$a;->a:Lcom/google/android/gms/internal/ps;

    invoke-static {v0}, Lcom/google/android/gms/internal/ps;->a(Lcom/google/android/gms/internal/ps;)Z

    move-result v0

    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/pd;Lcom/google/android/gms/internal/pk;)Lcom/google/android/gms/internal/os;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/os;->zzb(Lcom/google/android/gms/internal/pd;Lcom/google/android/gms/internal/pk;)Lcom/google/android/gms/internal/qs;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ps$a;

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ps;)Lcom/google/android/gms/internal/ps$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ps$a;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ps$a;->a:Lcom/google/android/gms/internal/ps;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ps$a;->a(Lcom/google/android/gms/internal/ps;Lcom/google/android/gms/internal/ps;)V

    return-object p0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/pd;Lcom/google/android/gms/internal/pk;)Lcom/google/android/gms/internal/qs;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ps$a;->b()Lcom/google/android/gms/internal/ps$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzcvh()Lcom/google/android/gms/internal/os;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/os;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ps$a;

    return-object v0
.end method

.method public final synthetic zzcxq()Lcom/google/android/gms/internal/qr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ps$a;->b:Lcom/google/android/gms/internal/ps;

    return-object v0
.end method

.method public final zzcxs()Lcom/google/android/gms/internal/ps;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ps$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ps$a;->a:Lcom/google/android/gms/internal/ps;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ps$a;->a:Lcom/google/android/gms/internal/ps;

    sget v1, Lcom/google/android/gms/internal/ps$f;->zzphh:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ps;->b:Lcom/google/android/gms/internal/rv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/rv;->zzbiy()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ps$a;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ps$a;->a:Lcom/google/android/gms/internal/ps;

    return-object v0
.end method

.method public final zzcxt()Lcom/google/android/gms/internal/ps;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ps$a;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ps$a;->a:Lcom/google/android/gms/internal/ps;

    sget v2, Lcom/google/android/gms/internal/ps$f;->zzphh:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ps;->b:Lcom/google/android/gms/internal/rv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/rv;->zzbiy()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ps$a;->c:Z

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ps$a;->a:Lcom/google/android/gms/internal/ps;

    check-cast v0, Lcom/google/android/gms/internal/ps;

    sget v2, Lcom/google/android/gms/internal/ps$f;->zzphe:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ps;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    goto :goto_2

    :cond_1
    if-nez v2, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    sget v2, Lcom/google/android/gms/internal/ps$f;->zzphc:I

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ps;->a()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    sget v2, Lcom/google/android/gms/internal/ps$f;->zzphf:I

    :goto_2
    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    new-instance v1, Lcom/google/android/gms/internal/rt;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/rt;-><init>(Lcom/google/android/gms/internal/qr;)V

    throw v1
.end method

.method public final synthetic zzcxu()Lcom/google/android/gms/internal/qr;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ps$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ps$a;->a:Lcom/google/android/gms/internal/ps;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ps$a;->a:Lcom/google/android/gms/internal/ps;

    sget v1, Lcom/google/android/gms/internal/ps$f;->zzphh:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ps;->b:Lcom/google/android/gms/internal/rv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/rv;->zzbiy()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ps$a;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ps$a;->a:Lcom/google/android/gms/internal/ps;

    return-object v0
.end method

.method public final synthetic zzcxv()Lcom/google/android/gms/internal/qr;
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ps$a;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ps$a;->a:Lcom/google/android/gms/internal/ps;

    sget v2, Lcom/google/android/gms/internal/ps$f;->zzphh:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ps;->b:Lcom/google/android/gms/internal/rv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/rv;->zzbiy()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ps$a;->c:Z

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ps$a;->a:Lcom/google/android/gms/internal/ps;

    check-cast v0, Lcom/google/android/gms/internal/ps;

    sget v2, Lcom/google/android/gms/internal/ps$f;->zzphe:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ps;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    goto :goto_2

    :cond_1
    if-nez v2, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    sget v2, Lcom/google/android/gms/internal/ps$f;->zzphc:I

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ps;->a()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    sget v2, Lcom/google/android/gms/internal/ps$f;->zzphf:I

    :goto_2
    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    new-instance v1, Lcom/google/android/gms/internal/rt;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/rt;-><init>(Lcom/google/android/gms/internal/qr;)V

    throw v1
.end method
