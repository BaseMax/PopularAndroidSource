.class final Lcom/adjust/sdk/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adjust/sdk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:I

.field c:Ljava/lang/String;

.field d:I

.field e:I

.field f:J

.field g:J

.field h:Ljava/lang/String;

.field final synthetic i:Lcom/adjust/sdk/b;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/b;Lcom/adjust/sdk/ActivityState;)V
    .locals 3

    .line 58
    iput-object p1, p0, Lcom/adjust/sdk/b$a;->i:Lcom/adjust/sdk/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 49
    iput-wide v0, p0, Lcom/adjust/sdk/b$a;->a:J

    const/4 p1, -0x1

    .line 50
    iput p1, p0, Lcom/adjust/sdk/b$a;->b:I

    const/4 v2, 0x0

    .line 51
    iput-object v2, p0, Lcom/adjust/sdk/b$a;->c:Ljava/lang/String;

    .line 52
    iput p1, p0, Lcom/adjust/sdk/b$a;->d:I

    .line 53
    iput p1, p0, Lcom/adjust/sdk/b$a;->e:I

    .line 54
    iput-wide v0, p0, Lcom/adjust/sdk/b$a;->f:J

    .line 55
    iput-wide v0, p0, Lcom/adjust/sdk/b$a;->g:J

    .line 56
    iput-object v2, p0, Lcom/adjust/sdk/b$a;->h:Ljava/lang/String;

    if-nez p2, :cond_0

    return-void

    .line 62
    :cond_0
    iget-wide v0, p2, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    iput-wide v0, p0, Lcom/adjust/sdk/b$a;->a:J

    .line 63
    iget p1, p2, Lcom/adjust/sdk/ActivityState;->eventCount:I

    iput p1, p0, Lcom/adjust/sdk/b$a;->b:I

    .line 64
    iget-object p1, p2, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    iput-object p1, p0, Lcom/adjust/sdk/b$a;->c:Ljava/lang/String;

    .line 65
    iget p1, p2, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    iput p1, p0, Lcom/adjust/sdk/b$a;->d:I

    .line 66
    iget p1, p2, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    iput p1, p0, Lcom/adjust/sdk/b$a;->e:I

    .line 67
    iget-wide v0, p2, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    iput-wide v0, p0, Lcom/adjust/sdk/b$a;->f:J

    .line 68
    iget-wide v0, p2, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    iput-wide v0, p0, Lcom/adjust/sdk/b$a;->g:J

    .line 69
    iget-object p1, p2, Lcom/adjust/sdk/ActivityState;->pushToken:Ljava/lang/String;

    iput-object p1, p0, Lcom/adjust/sdk/b$a;->h:Ljava/lang/String;

    return-void
.end method
