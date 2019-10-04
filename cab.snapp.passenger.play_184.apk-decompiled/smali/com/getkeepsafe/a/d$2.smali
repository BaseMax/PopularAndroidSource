.class final Lcom/getkeepsafe/a/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getkeepsafe/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/getkeepsafe/a/d;


# direct methods
.method constructor <init>(Lcom/getkeepsafe/a/d;Ljava/lang/String;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/getkeepsafe/a/d$2;->b:Lcom/getkeepsafe/a/d;

    iput-object p2, p0, Lcom/getkeepsafe/a/d$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 254
    iget-object p1, p0, Lcom/getkeepsafe/a/d$2;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
