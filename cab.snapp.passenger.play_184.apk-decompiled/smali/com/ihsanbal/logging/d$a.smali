.class public final Lcom/ihsanbal/logging/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihsanbal/logging/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static g:Ljava/lang/String; = "LoggingI"


# instance fields
.field final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field d:I

.field e:Lcom/ihsanbal/logging/Level;

.field f:Lcom/ihsanbal/logging/c;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/concurrent/Executor;

.field private l:Z

.field private m:J

.field private n:Lcom/ihsanbal/logging/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lcom/ihsanbal/logging/d$a;->c:Z

    const/4 v0, 0x4

    .line 197
    iput v0, p0, Lcom/ihsanbal/logging/d$a;->d:I

    .line 200
    sget-object v0, Lcom/ihsanbal/logging/Level;->BASIC:Lcom/ihsanbal/logging/Level;

    iput-object v0, p0, Lcom/ihsanbal/logging/d$a;->e:Lcom/ihsanbal/logging/Level;

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ihsanbal/logging/d$a;->a:Ljava/util/HashMap;

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ihsanbal/logging/d$a;->b:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/ihsanbal/logging/d$a;)Z
    .locals 0

    .line 190
    iget-boolean p0, p0, Lcom/ihsanbal/logging/d$a;->h:Z

    return p0
.end method

.method static synthetic b(Lcom/ihsanbal/logging/d$a;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/ihsanbal/logging/d$a;->k:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic c(Lcom/ihsanbal/logging/d$a;)Z
    .locals 0

    .line 190
    iget-boolean p0, p0, Lcom/ihsanbal/logging/d$a;->l:Z

    return p0
.end method

.method static synthetic d(Lcom/ihsanbal/logging/d$a;)J
    .locals 2

    .line 190
    iget-wide v0, p0, Lcom/ihsanbal/logging/d$a;->m:J

    return-wide v0
.end method

.method static synthetic e(Lcom/ihsanbal/logging/d$a;)Lcom/ihsanbal/logging/a;
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/ihsanbal/logging/d$a;->n:Lcom/ihsanbal/logging/a;

    return-object p0
.end method


# virtual methods
.method final a(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    .line 240
    iget-object p1, p0, Lcom/ihsanbal/logging/d$a;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/ihsanbal/logging/f;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/ihsanbal/logging/d$a;->g:Ljava/lang/String;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/ihsanbal/logging/d$a;->i:Ljava/lang/String;

    return-object p1

    .line 242
    :cond_1
    iget-object p1, p0, Lcom/ihsanbal/logging/d$a;->j:Ljava/lang/String;

    invoke-static {p1}, Lcom/ihsanbal/logging/f;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/ihsanbal/logging/d$a;->g:Ljava/lang/String;

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/ihsanbal/logging/d$a;->j:Ljava/lang/String;

    return-object p1
.end method

.method public final addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/ihsanbal/logging/d$a;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/ihsanbal/logging/d$a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final addQueryParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ihsanbal/logging/d$a;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/ihsanbal/logging/d$a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final build()Lcom/ihsanbal/logging/d;
    .locals 2

    .line 380
    new-instance v0, Lcom/ihsanbal/logging/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ihsanbal/logging/d;-><init>(Lcom/ihsanbal/logging/d$a;B)V

    return-object v0
.end method

.method public final enableAndroidStudio_v3_LogsHack(Z)Lcom/ihsanbal/logging/d$a;
    .locals 0

    .line 375
    iput-boolean p1, p0, Lcom/ihsanbal/logging/d$a;->c:Z

    return-object p0
.end method

.method public final enableMock(ZJLcom/ihsanbal/logging/a;)Lcom/ihsanbal/logging/d$a;
    .locals 0

    .line 359
    iput-boolean p1, p0, Lcom/ihsanbal/logging/d$a;->l:Z

    .line 360
    iput-wide p2, p0, Lcom/ihsanbal/logging/d$a;->m:J

    .line 361
    iput-object p4, p0, Lcom/ihsanbal/logging/d$a;->n:Lcom/ihsanbal/logging/a;

    return-object p0
.end method

.method public final executor(Ljava/util/concurrent/Executor;)Lcom/ihsanbal/logging/d$a;
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/ihsanbal/logging/d$a;->k:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final log(I)Lcom/ihsanbal/logging/d$a;
    .locals 0

    .line 328
    iput p1, p0, Lcom/ihsanbal/logging/d$a;->d:I

    return-object p0
.end method

.method public final loggable(Z)Lcom/ihsanbal/logging/d$a;
    .locals 0

    .line 318
    iput-boolean p1, p0, Lcom/ihsanbal/logging/d$a;->h:Z

    return-object p0
.end method

.method public final logger(Lcom/ihsanbal/logging/c;)Lcom/ihsanbal/logging/d$a;
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/ihsanbal/logging/d$a;->f:Lcom/ihsanbal/logging/c;

    return-object p0
.end method

.method public final request(Ljava/lang/String;)Lcom/ihsanbal/logging/d$a;
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/ihsanbal/logging/d$a;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final response(Ljava/lang/String;)Lcom/ihsanbal/logging/d$a;
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/ihsanbal/logging/d$a;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final setLevel(Lcom/ihsanbal/logging/Level;)Lcom/ihsanbal/logging/d$a;
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/ihsanbal/logging/d$a;->e:Lcom/ihsanbal/logging/Level;

    return-object p0
.end method

.method public final tag(Ljava/lang/String;)Lcom/ihsanbal/logging/d$a;
    .locals 0

    .line 287
    sput-object p1, Lcom/ihsanbal/logging/d$a;->g:Ljava/lang/String;

    return-object p0
.end method
