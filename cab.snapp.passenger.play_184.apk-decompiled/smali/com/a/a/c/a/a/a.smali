.class public final Lcom/a/a/c/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final baseAddress:J

.field public final id:Ljava/lang/String;

.field public final path:Ljava/lang/String;

.field public final size:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p1, p0, Lcom/a/a/c/a/a/a;->baseAddress:J

    .line 30
    iput-wide p3, p0, Lcom/a/a/c/a/a/a;->size:J

    .line 31
    iput-object p5, p0, Lcom/a/a/c/a/a/a;->path:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/a/a/c/a/a/a;->id:Ljava/lang/String;

    return-void
.end method
