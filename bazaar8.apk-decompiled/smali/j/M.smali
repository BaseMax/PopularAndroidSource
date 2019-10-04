.class public Lj/M;
.super Lj/O;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/O;->a(Lj/F;Lokio/ByteString;)Lj/O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj/F;

.field public final synthetic b:Lokio/ByteString;


# direct methods
.method public constructor <init>(Lj/F;Lokio/ByteString;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/M;->a:Lj/F;

    iput-object p2, p0, Lj/M;->b:Lokio/ByteString;

    invoke-direct {p0}, Lj/O;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-object v0, p0, Lj/M;->b:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->k()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public a(Lk/h;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lj/M;->b:Lokio/ByteString;

    invoke-interface {p1, v0}, Lk/h;->a(Lokio/ByteString;)Lk/h;

    return-void
.end method

.method public b()Lj/F;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/M;->a:Lj/F;

    return-object v0
.end method
