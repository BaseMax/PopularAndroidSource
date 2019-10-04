.class public final Ll/v$b;
.super Lj/S;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field public final b:Lj/F;

.field public final c:J


# direct methods
.method public constructor <init>(Lj/F;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj/S;-><init>()V

    .line 2
    iput-object p1, p0, Ll/v$b;->b:Lj/F;

    .line 3
    iput-wide p2, p0, Ll/v$b;->c:J

    return-void
.end method


# virtual methods
.method public u()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ll/v$b;->c:J

    return-wide v0
.end method

.method public v()Lj/F;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/v$b;->b:Lj/F;

    return-object v0
.end method

.method public w()Lk/i;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read raw response body of a converted body."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
