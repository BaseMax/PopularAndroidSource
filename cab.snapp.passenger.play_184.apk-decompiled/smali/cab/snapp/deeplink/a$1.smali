.class final synthetic Lcab/snapp/deeplink/a$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/deeplink/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 319
    invoke-static {}, Lcab/snapp/deeplink/models/types/PathType;->values()[Lcab/snapp/deeplink/models/types/PathType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcab/snapp/deeplink/a$1;->b:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcab/snapp/deeplink/a$1;->b:[I

    sget-object v2, Lcab/snapp/deeplink/models/types/PathType;->Here:Lcab/snapp/deeplink/models/types/PathType;

    invoke-virtual {v2}, Lcab/snapp/deeplink/models/types/PathType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcab/snapp/deeplink/a$1;->b:[I

    sget-object v3, Lcab/snapp/deeplink/models/types/PathType;->Selective:Lcab/snapp/deeplink/models/types/PathType;

    invoke-virtual {v3}, Lcab/snapp/deeplink/models/types/PathType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcab/snapp/deeplink/a$1;->b:[I

    sget-object v4, Lcab/snapp/deeplink/models/types/PathType;->GoogleMaps:Lcab/snapp/deeplink/models/types/PathType;

    invoke-virtual {v4}, Lcab/snapp/deeplink/models/types/PathType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcab/snapp/deeplink/a$1;->b:[I

    sget-object v5, Lcab/snapp/deeplink/models/types/PathType;->StringData:Lcab/snapp/deeplink/models/types/PathType;

    invoke-virtual {v5}, Lcab/snapp/deeplink/models/types/PathType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcab/snapp/deeplink/a$1;->b:[I

    sget-object v6, Lcab/snapp/deeplink/models/types/PathType;->Location:Lcab/snapp/deeplink/models/types/PathType;

    invoke-virtual {v6}, Lcab/snapp/deeplink/models/types/PathType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 208
    :catch_4
    invoke-static {}, Lcab/snapp/deeplink/models/types/Host;->values()[Lcab/snapp/deeplink/models/types/Host;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcab/snapp/deeplink/a$1;->a:[I

    :try_start_5
    sget-object v5, Lcab/snapp/deeplink/a$1;->a:[I

    sget-object v6, Lcab/snapp/deeplink/models/types/Host;->Shortcut:Lcab/snapp/deeplink/models/types/Host;

    invoke-virtual {v6}, Lcab/snapp/deeplink/models/types/Host;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcab/snapp/deeplink/a$1;->a:[I

    sget-object v5, Lcab/snapp/deeplink/models/types/Host;->Ride:Lcab/snapp/deeplink/models/types/Host;

    invoke-virtual {v5}, Lcab/snapp/deeplink/models/types/Host;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcab/snapp/deeplink/a$1;->a:[I

    sget-object v1, Lcab/snapp/deeplink/models/types/Host;->Open:Lcab/snapp/deeplink/models/types/Host;

    invoke-virtual {v1}, Lcab/snapp/deeplink/models/types/Host;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcab/snapp/deeplink/a$1;->a:[I

    sget-object v1, Lcab/snapp/deeplink/models/types/Host;->Box:Lcab/snapp/deeplink/models/types/Host;

    invoke-virtual {v1}, Lcab/snapp/deeplink/models/types/Host;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcab/snapp/deeplink/a$1;->a:[I

    sget-object v1, Lcab/snapp/deeplink/models/types/Host;->Bike:Lcab/snapp/deeplink/models/types/Host;

    invoke-virtual {v1}, Lcab/snapp/deeplink/models/types/Host;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcab/snapp/deeplink/a$1;->a:[I

    sget-object v1, Lcab/snapp/deeplink/models/types/Host;->Rose:Lcab/snapp/deeplink/models/types/Host;

    invoke-virtual {v1}, Lcab/snapp/deeplink/models/types/Host;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcab/snapp/deeplink/a$1;->a:[I

    sget-object v1, Lcab/snapp/deeplink/models/types/Host;->Eco:Lcab/snapp/deeplink/models/types/Host;

    invoke-virtual {v1}, Lcab/snapp/deeplink/models/types/Host;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcab/snapp/deeplink/a$1;->a:[I

    sget-object v1, Lcab/snapp/deeplink/models/types/Host;->Google:Lcab/snapp/deeplink/models/types/Host;

    invoke-virtual {v1}, Lcab/snapp/deeplink/models/types/Host;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcab/snapp/deeplink/a$1;->a:[I

    sget-object v1, Lcab/snapp/deeplink/models/types/Host;->CompleteGoogle:Lcab/snapp/deeplink/models/types/Host;

    invoke-virtual {v1}, Lcab/snapp/deeplink/models/types/Host;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method
