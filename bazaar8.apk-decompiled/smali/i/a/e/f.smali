.class public final Li/a/e/f;
.super Li/a/e/l;
.source "Tasks.kt"


# static fields
.field public static final a:Li/a/e/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/a/e/f;

    invoke-direct {v0}, Li/a/e/f;-><init>()V

    sput-object v0, Li/a/e/f;->a:Li/a/e/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/a/e/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
