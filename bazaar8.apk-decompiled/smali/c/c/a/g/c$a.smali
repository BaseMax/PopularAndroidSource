.class public final Lc/c/a/g/c$a;
.super Ljava/lang/Object;
.source "EndpointDetector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lc/c/a/g/c;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "serviceName"

    invoke-static {p1, p0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "baseUrl"

    invoke-static {p2, p0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method
