.class public final Li/a/b/c;
.super Ljava/lang/Object;
.source "AbstractChannel.kt"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/lang/Object;

.field public static final c:Ljava/lang/Object;

.field public static final d:Ljava/lang/Object;

.field public static final e:Ljava/lang/Object;

.field public static final f:Li/a/c/v;

.field public static final g:Ljava/lang/Object;

.field public static final h:Ljava/lang/Object;

.field public static final i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Li/a/c/v;

    const-string v1, "OFFER_SUCCESS"

    invoke-direct {v0, v1}, Li/a/c/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Li/a/b/c;->a:Ljava/lang/Object;

    .line 2
    new-instance v0, Li/a/c/v;

    const-string v1, "OFFER_FAILED"

    invoke-direct {v0, v1}, Li/a/c/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Li/a/b/c;->b:Ljava/lang/Object;

    .line 3
    new-instance v0, Li/a/c/v;

    const-string v1, "POLL_FAILED"

    invoke-direct {v0, v1}, Li/a/c/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Li/a/b/c;->c:Ljava/lang/Object;

    .line 4
    new-instance v0, Li/a/c/v;

    const-string v1, "ENQUEUE_FAILED"

    invoke-direct {v0, v1}, Li/a/c/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Li/a/b/c;->d:Ljava/lang/Object;

    .line 5
    new-instance v0, Li/a/c/v;

    const-string v1, "SELECT_STARTED"

    invoke-direct {v0, v1}, Li/a/c/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Li/a/b/c;->e:Ljava/lang/Object;

    .line 6
    new-instance v0, Li/a/c/v;

    const-string v1, "NULL_VALUE"

    invoke-direct {v0, v1}, Li/a/c/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Li/a/b/c;->f:Li/a/c/v;

    .line 7
    new-instance v0, Li/a/c/v;

    const-string v1, "CLOSE_RESUMED"

    invoke-direct {v0, v1}, Li/a/c/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Li/a/b/c;->g:Ljava/lang/Object;

    .line 8
    new-instance v0, Li/a/c/v;

    const-string v1, "SEND_RESUMED"

    invoke-direct {v0, v1}, Li/a/c/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Li/a/b/c;->h:Ljava/lang/Object;

    .line 9
    new-instance v0, Li/a/c/v;

    const-string v1, "ON_CLOSE_HANDLER_INVOKED"

    invoke-direct {v0, v1}, Li/a/c/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Li/a/b/c;->i:Ljava/lang/Object;

    return-void
.end method
