.class public Lj/Q;
.super Lj/S;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/S;->a(Lj/F;JLk/i;)Lj/S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lj/F;

.field public final synthetic c:J

.field public final synthetic d:Lk/i;


# direct methods
.method public constructor <init>(Lj/F;JLk/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/Q;->b:Lj/F;

    iput-wide p2, p0, Lj/Q;->c:J

    iput-object p4, p0, Lj/Q;->d:Lk/i;

    invoke-direct {p0}, Lj/S;-><init>()V

    return-void
.end method


# virtual methods
.method public u()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lj/Q;->c:J

    return-wide v0
.end method

.method public v()Lj/F;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/Q;->b:Lj/F;

    return-object v0
.end method

.method public w()Lk/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/Q;->d:Lk/i;

    return-object v0
.end method
