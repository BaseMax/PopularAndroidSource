.class final Lcom/a/a/c/i$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/c/ag$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/c/i;


# direct methods
.method private constructor <init>(Lcom/a/a/c/i;)V
    .locals 0

    .line 1418
    iput-object p1, p0, Lcom/a/a/c/i$f;->a:Lcom/a/a/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/c/i;B)V
    .locals 0

    .line 1418
    invoke-direct {p0, p1}, Lcom/a/a/c/i$f;-><init>(Lcom/a/a/c/i;)V

    return-void
.end method


# virtual methods
.method public final getCompleteSessionFiles()[Ljava/io/File;
    .locals 1

    .line 1421
    iget-object v0, p0, Lcom/a/a/c/i$f;->a:Lcom/a/a/c/i;

    invoke-virtual {v0}, Lcom/a/a/c/i;->a()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final getInvalidSessionFiles()[Ljava/io/File;
    .locals 1

    .line 1426
    iget-object v0, p0, Lcom/a/a/c/i$f;->a:Lcom/a/a/c/i;

    invoke-virtual {v0}, Lcom/a/a/c/i;->g()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
