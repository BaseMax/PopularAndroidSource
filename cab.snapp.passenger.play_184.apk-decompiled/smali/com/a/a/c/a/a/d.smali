.class public final Lcom/a/a/c/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final binaryImages:[Lcom/a/a/c/a/a/a;

.field public final customAttributes:[Lcom/a/a/c/a/a/b;

.field public final deviceData:Lcom/a/a/c/a/a/c;

.field public final signal:Lcom/a/a/c/a/a/e;

.field public final threads:[Lcom/a/a/c/a/a/f;

.field public final timestamp:J


# direct methods
.method public constructor <init>(JLcom/a/a/c/a/a/e;[Lcom/a/a/c/a/a/f;[Lcom/a/a/c/a/a/a;[Lcom/a/a/c/a/a/b;Lcom/a/a/c/a/a/c;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-wide p1, p0, Lcom/a/a/c/a/a/d;->timestamp:J

    .line 47
    iput-object p3, p0, Lcom/a/a/c/a/a/d;->signal:Lcom/a/a/c/a/a/e;

    .line 48
    iput-object p4, p0, Lcom/a/a/c/a/a/d;->threads:[Lcom/a/a/c/a/a/f;

    .line 49
    iput-object p5, p0, Lcom/a/a/c/a/a/d;->binaryImages:[Lcom/a/a/c/a/a/a;

    .line 50
    iput-object p6, p0, Lcom/a/a/c/a/a/d;->customAttributes:[Lcom/a/a/c/a/a/b;

    .line 51
    iput-object p7, p0, Lcom/a/a/c/a/a/d;->deviceData:Lcom/a/a/c/a/a/c;

    return-void
.end method
