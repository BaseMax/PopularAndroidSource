.class final Lcom/a/a/c/i$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/c/ag$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/c/i;


# direct methods
.method private constructor <init>(Lcom/a/a/c/i;)V
    .locals 0

    .line 1410
    iput-object p1, p0, Lcom/a/a/c/i$g;->a:Lcom/a/a/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/c/i;B)V
    .locals 0

    .line 1410
    invoke-direct {p0, p1}, Lcom/a/a/c/i$g;-><init>(Lcom/a/a/c/i;)V

    return-void
.end method


# virtual methods
.method public final isHandlingException()Z
    .locals 1

    .line 1414
    iget-object v0, p0, Lcom/a/a/c/i$g;->a:Lcom/a/a/c/i;

    invoke-virtual {v0}, Lcom/a/a/c/i;->c()Z

    move-result v0

    return v0
.end method
