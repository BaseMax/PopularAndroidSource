.class public final Lcom/crashlytics/android/core/ByteString$Output;
.super Ljava/io/FilterOutputStream;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Output"
.end annotation


# instance fields
.field public final bout:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3
    iput-object p1, p0, Lcom/crashlytics/android/core/ByteString$Output;->bout:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/ByteArrayOutputStream;Lcom/crashlytics/android/core/ByteString$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/ByteString$Output;-><init>(Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method


# virtual methods
.method public toByteString()Lcom/crashlytics/android/core/ByteString;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString$Output;->bout:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 2
    new-instance v1, Lcom/crashlytics/android/core/ByteString;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/crashlytics/android/core/ByteString;-><init>([BLcom/crashlytics/android/core/ByteString$1;)V

    return-object v1
.end method
