.class public Lj/N;
.super Lj/O;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/O;->a(Lj/F;[BII)Lj/O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj/F;

.field public final synthetic b:I

.field public final synthetic c:[B

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Lj/F;I[BI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/N;->a:Lj/F;

    iput p2, p0, Lj/N;->b:I

    iput-object p3, p0, Lj/N;->c:[B

    iput p4, p0, Lj/N;->d:I

    invoke-direct {p0}, Lj/O;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget v0, p0, Lj/N;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public a(Lk/h;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lj/N;->c:[B

    iget v1, p0, Lj/N;->d:I

    iget v2, p0, Lj/N;->b:I

    invoke-interface {p1, v0, v1, v2}, Lk/h;->write([BII)Lk/h;

    return-void
.end method

.method public b()Lj/F;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/N;->a:Lj/F;

    return-object v0
.end method
