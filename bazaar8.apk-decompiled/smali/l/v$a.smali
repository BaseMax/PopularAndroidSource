.class public final Ll/v$a;
.super Lj/S;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final b:Lj/S;

.field public c:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Lj/S;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj/S;-><init>()V

    .line 2
    iput-object p1, p0, Ll/v$a;->b:Lj/S;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Ll/v$a;->b:Lj/S;

    invoke-virtual {v0}, Lj/S;->close()V

    return-void
.end method

.method public u()J
    .locals 2

    .line 1
    iget-object v0, p0, Ll/v$a;->b:Lj/S;

    invoke-virtual {v0}, Lj/S;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public v()Lj/F;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/v$a;->b:Lj/S;

    invoke-virtual {v0}, Lj/S;->v()Lj/F;

    move-result-object v0

    return-object v0
.end method

.method public w()Lk/i;
    .locals 2

    .line 1
    new-instance v0, Ll/u;

    iget-object v1, p0, Ll/v$a;->b:Lj/S;

    invoke-virtual {v1}, Lj/S;->w()Lk/i;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ll/u;-><init>(Ll/v$a;Lk/z;)V

    invoke-static {v0}, Lk/s;->a(Lk/z;)Lk/i;

    move-result-object v0

    return-object v0
.end method

.method public y()V
    .locals 1

    .line 1
    iget-object v0, p0, Ll/v$a;->c:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    throw v0
.end method
