.class final Lcom/getkeepsafe/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getkeepsafe/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public zipEntry:Ljava/util/zip/ZipEntry;

.field public zipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/getkeepsafe/a/a$a;->zipFile:Ljava/util/zip/ZipFile;

    .line 57
    iput-object p2, p0, Lcom/getkeepsafe/a/a$a;->zipEntry:Ljava/util/zip/ZipEntry;

    return-void
.end method
