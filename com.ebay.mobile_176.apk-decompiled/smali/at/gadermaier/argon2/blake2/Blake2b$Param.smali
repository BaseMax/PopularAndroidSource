.class public Lat/gadermaier/argon2/blake2/Blake2b$Param;
.super Ljava/lang/Object;
.source "Blake2b.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/gadermaier/argon2/blake2/Blake2b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Param"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/gadermaier/argon2/blake2/Blake2b$Param$Default;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final default_bytes:[B

.field static final default_h:[J


# instance fields
.field private bytes:[B

.field private final h:[J

.field private hasKey:Z

.field private key_bytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 976
    const-class v0, Lat/gadermaier/argon2/blake2/Blake2b;

    const/16 v0, 0x40

    .line 980
    new-array v1, v0, [B

    sput-object v1, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_bytes:[B

    const/16 v1, 0x8

    .line 984
    new-array v2, v1, [J

    sput-object v2, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_h:[J

    .line 988
    sget-object v2, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_bytes:[B

    const/4 v3, 0x0

    aput-byte v0, v2, v3

    .line 989
    sget-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_bytes:[B

    const/4 v2, 0x1

    aput-byte v3, v0, v2

    .line 990
    sget-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_bytes:[B

    const/4 v4, 0x2

    aput-byte v2, v0, v4

    .line 991
    sget-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_bytes:[B

    const/4 v5, 0x3

    aput-byte v2, v0, v5

    .line 994
    sget-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_bytes:[B

    const/16 v6, 0x10

    aput-byte v3, v0, v6

    .line 995
    sget-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_bytes:[B

    const/16 v7, 0x11

    aput-byte v3, v0, v7

    .line 1001
    sget-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_h:[J

    sget-object v7, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_bytes:[B

    invoke-static {v7, v3}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->readLong([BI)J

    move-result-wide v7

    aput-wide v7, v0, v3

    .line 1002
    sget-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_h:[J

    sget-object v7, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_bytes:[B

    invoke-static {v7, v1}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->readLong([BI)J

    move-result-wide v7

    aput-wide v7, v0, v2

    .line 1003
    sget-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_h:[J

    sget-object v1, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_bytes:[B

    invoke-static {v1, v6}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->readLong([BI)J

    move-result-wide v6

    aput-wide v6, v0, v4

    .line 1004
    sget-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_h:[J

    sget-object v1, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_bytes:[B

    const/16 v6, 0x18

    invoke-static {v1, v6}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->readLong([BI)J

    move-result-wide v6

    aput-wide v6, v0, v5

    .line 1005
    sget-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_h:[J

    sget-object v1, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_bytes:[B

    const/16 v6, 0x20

    invoke-static {v1, v6}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->readLong([BI)J

    move-result-wide v6

    const/4 v1, 0x4

    aput-wide v6, v0, v1

    .line 1006
    sget-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_h:[J

    sget-object v6, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_bytes:[B

    const/16 v7, 0x28

    invoke-static {v6, v7}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->readLong([BI)J

    move-result-wide v6

    const/4 v8, 0x5

    aput-wide v6, v0, v8

    .line 1007
    sget-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_h:[J

    sget-object v6, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_bytes:[B

    const/16 v7, 0x30

    invoke-static {v6, v7}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->readLong([BI)J

    move-result-wide v6

    const/4 v9, 0x6

    aput-wide v6, v0, v9

    .line 1008
    sget-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_h:[J

    sget-object v6, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_bytes:[B

    const/16 v7, 0x38

    invoke-static {v6, v7}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->readLong([BI)J

    move-result-wide v6

    const/4 v10, 0x7

    aput-wide v6, v0, v10

    .line 1010
    sget-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_h:[J

    aget-wide v6, v0, v3

    sget-object v11, Lat/gadermaier/argon2/blake2/Blake2b$Spec;->IV:[J

    aget-wide v12, v11, v3

    xor-long/2addr v6, v12

    aput-wide v6, v0, v3

    .line 1011
    sget-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_h:[J

    aget-wide v6, v0, v2

    sget-object v3, Lat/gadermaier/argon2/blake2/Blake2b$Spec;->IV:[J

    aget-wide v11, v3, v2

    xor-long/2addr v6, v11

    aput-wide v6, v0, v2

    .line 1012
    sget-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_h:[J

    aget-wide v2, v0, v4

    sget-object v6, Lat/gadermaier/argon2/blake2/Blake2b$Spec;->IV:[J

    aget-wide v11, v6, v4

    xor-long/2addr v2, v11

    aput-wide v2, v0, v4

    .line 1013
    sget-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_h:[J

    aget-wide v2, v0, v5

    sget-object v4, Lat/gadermaier/argon2/blake2/Blake2b$Spec;->IV:[J

    aget-wide v6, v4, v5

    xor-long/2addr v2, v6

    aput-wide v2, v0, v5

    .line 1014
    sget-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_h:[J

    aget-wide v2, v0, v1

    sget-object v4, Lat/gadermaier/argon2/blake2/Blake2b$Spec;->IV:[J

    aget-wide v5, v4, v1

    xor-long/2addr v2, v5

    aput-wide v2, v0, v1

    .line 1015
    sget-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_h:[J

    aget-wide v1, v0, v8

    sget-object v3, Lat/gadermaier/argon2/blake2/Blake2b$Spec;->IV:[J

    aget-wide v4, v3, v8

    xor-long/2addr v1, v4

    aput-wide v1, v0, v8

    .line 1016
    sget-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_h:[J

    aget-wide v1, v0, v9

    sget-object v3, Lat/gadermaier/argon2/blake2/Blake2b$Spec;->IV:[J

    aget-wide v4, v3, v9

    xor-long/2addr v1, v4

    aput-wide v1, v0, v9

    .line 1017
    sget-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_h:[J

    aget-wide v1, v0, v10

    sget-object v3, Lat/gadermaier/argon2/blake2/Blake2b$Spec;->IV:[J

    aget-wide v4, v3, v10

    xor-long/2addr v1, v4

    aput-wide v1, v0, v10

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 1021
    new-array v1, v0, [J

    iput-object v1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    const/4 v1, 0x0

    .line 1023
    iput-boolean v1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->hasKey:Z

    const/4 v2, 0x0

    .line 1025
    iput-object v2, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->key_bytes:[B

    .line 1027
    iput-object v2, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    .line 1030
    sget-object v2, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_h:[J

    iget-object v3, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$000(Lat/gadermaier/argon2/blake2/Blake2b$Param;)Z
    .locals 0

    .line 976
    iget-boolean p0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->hasKey:Z

    return p0
.end method

.method static synthetic access$100(Lat/gadermaier/argon2/blake2/Blake2b$Param;)[B
    .locals 0

    .line 976
    iget-object p0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->key_bytes:[B

    return-object p0
.end method


# virtual methods
.method public clone()Lat/gadermaier/argon2/blake2/Blake2b$Param;
    .locals 5

    .line 1181
    new-instance v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;

    invoke-direct {v0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;-><init>()V

    .line 1182
    iget-object v1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    iget-object v3, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1183
    invoke-virtual {v0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->lazyInitBytes()V

    .line 1184
    iget-object v1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    iget-object v3, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1186
    iget-boolean v1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->hasKey:Z

    if-eqz v1, :cond_0

    .line 1187
    iget-boolean v1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->hasKey:Z

    iput-boolean v1, v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->hasKey:Z

    const/16 v1, 0x80

    .line 1188
    new-array v1, v1, [B

    iput-object v1, v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->key_bytes:[B

    .line 1189
    iget-object v1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->key_bytes:[B

    iget-object v2, v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->key_bytes:[B

    iget-object v3, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->key_bytes:[B

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 976
    invoke-virtual {p0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->clone()Lat/gadermaier/argon2/blake2/Blake2b$Param;

    move-result-object v0

    return-object v0
.end method

.method final getByteParam(I)B
    .locals 1

    .line 1047
    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    if-nez v0, :cond_0

    .line 1048
    sget-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_bytes:[B

    .line 1049
    :cond_0
    aget-byte p1, v0, p1

    return p1
.end method

.method public getBytes()[B
    .locals 4

    .line 1040
    invoke-virtual {p0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->lazyInitBytes()V

    .line 1041
    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 1042
    iget-object v1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    iget-object v2, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final getDepth()I
    .locals 1

    const/4 v0, 0x3

    .line 1100
    invoke-virtual {p0, v0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->getByteParam(I)B

    move-result v0

    return v0
.end method

.method public final getDigestLength()I
    .locals 1

    const/4 v0, 0x0

    .line 1066
    invoke-virtual {p0, v0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->getByteParam(I)B

    move-result v0

    return v0
.end method

.method public final getFanout()I
    .locals 1

    const/4 v0, 0x2

    .line 1086
    invoke-virtual {p0, v0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->getByteParam(I)B

    move-result v0

    return v0
.end method

.method public final getInnerLength()I
    .locals 1

    const/16 v0, 0x11

    .line 1160
    invoke-virtual {p0, v0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->getByteParam(I)B

    move-result v0

    return v0
.end method

.method final getIntParam(I)I
    .locals 1

    .line 1053
    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    if-nez v0, :cond_0

    .line 1054
    sget-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_bytes:[B

    .line 1055
    :cond_0
    invoke-static {v0, p1}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->readInt([BI)I

    move-result p1

    return p1
.end method

.method public final getKeyLength()I
    .locals 1

    const/4 v0, 0x1

    .line 1082
    invoke-virtual {p0, v0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->getByteParam(I)B

    move-result v0

    return v0
.end method

.method public final getLeafLength()I
    .locals 1

    const/4 v0, 0x4

    .line 1114
    invoke-virtual {p0, v0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->getIntParam(I)I

    move-result v0

    return v0
.end method

.method final getLongParam(I)J
    .locals 2

    .line 1059
    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    if-nez v0, :cond_0

    .line 1060
    sget-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_bytes:[B

    .line 1061
    :cond_0
    invoke-static {v0, p1}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->readLong([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getNodeDepth()I
    .locals 1

    const/16 v0, 0x10

    .line 1143
    invoke-virtual {p0, v0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->getByteParam(I)B

    move-result v0

    return v0
.end method

.method public final getNodeOffset()J
    .locals 2

    const/16 v0, 0x8

    .line 1128
    invoke-virtual {p0, v0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->getLongParam(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final hasKey()Z
    .locals 1

    .line 1176
    iget-boolean v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->hasKey:Z

    return v0
.end method

.method public initialized_H()[J
    .locals 1

    .line 1035
    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    return-object v0
.end method

.method final lazyInitBytes()V
    .locals 4

    .line 1198
    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    if-nez v0, :cond_0

    const/16 v0, 0x40

    .line 1199
    new-array v1, v0, [B

    iput-object v1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    .line 1200
    sget-object v1, Lat/gadermaier/argon2/blake2/Blake2b$Param;->default_bytes:[B

    iget-object v2, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public final setDepth(I)Lat/gadermaier/argon2/blake2/Blake2b$Param;
    .locals 6

    .line 1106
    invoke-virtual {p0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->lazyInitBytes()V

    .line 1107
    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    const/4 v1, 0x3

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 1108
    iget-object p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->readLong([BI)J

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 1109
    iget-object p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    aget-wide v2, p1, v1

    sget-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Spec;->IV:[J

    aget-wide v4, v0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p1, v1

    return-object p0
.end method

.method public final setDigestLength(I)Lat/gadermaier/argon2/blake2/Blake2b$Param;
    .locals 6

    .line 1074
    invoke-virtual {p0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->lazyInitBytes()V

    .line 1075
    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 1076
    iget-object p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    invoke-static {v0, v1}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->readLong([BI)J

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 1077
    iget-object p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    aget-wide v2, p1, v1

    sget-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Spec;->IV:[J

    aget-wide v4, v0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p1, v1

    return-object p0
.end method

.method public final setFanout(I)Lat/gadermaier/argon2/blake2/Blake2b$Param;
    .locals 6

    .line 1092
    invoke-virtual {p0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->lazyInitBytes()V

    .line 1093
    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    const/4 v1, 0x2

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 1094
    iget-object p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->readLong([BI)J

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 1095
    iget-object p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    aget-wide v2, p1, v1

    sget-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Spec;->IV:[J

    aget-wide v4, v0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p1, v1

    return-object p0
.end method

.method public final setInnerLength(I)Lat/gadermaier/argon2/blake2/Blake2b$Param;
    .locals 6

    .line 1166
    invoke-virtual {p0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->lazyInitBytes()V

    .line 1167
    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    const/16 v1, 0x11

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 1168
    iget-object p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->readLong([BI)J

    move-result-wide v0

    const/4 v2, 0x2

    aput-wide v0, p1, v2

    .line 1169
    iget-object p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    aget-wide v0, p1, v2

    sget-object v3, Lat/gadermaier/argon2/blake2/Blake2b$Spec;->IV:[J

    aget-wide v4, v3, v2

    xor-long/2addr v0, v4

    aput-wide v0, p1, v2

    .line 1170
    iget-object p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->readLong([BI)J

    move-result-wide v0

    const/4 v2, 0x3

    aput-wide v0, p1, v2

    .line 1171
    iget-object p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    aget-wide v0, p1, v2

    sget-object v3, Lat/gadermaier/argon2/blake2/Blake2b$Spec;->IV:[J

    aget-wide v4, v3, v2

    xor-long/2addr v0, v4

    aput-wide v0, p1, v2

    return-object p0
.end method

.method public final setKey(Ljava/security/Key;)Lat/gadermaier/argon2/blake2/Blake2b$Param;
    .locals 0

    .line 1206
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    .line 1209
    invoke-virtual {p0, p1}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->setKey([B)Lat/gadermaier/argon2/blake2/Blake2b$Param;

    move-result-object p1

    return-object p1
.end method

.method public final setKey([B)Lat/gadermaier/argon2/blake2/Blake2b$Param;
    .locals 7

    const/16 v0, 0x80

    .line 1218
    new-array v0, v0, [B

    iput-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->key_bytes:[B

    .line 1219
    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->key_bytes:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1220
    invoke-virtual {p0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->lazyInitBytes()V

    .line 1221
    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    array-length p1, p1

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    .line 1222
    iget-object p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    invoke-static {v0, v2}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->readLong([BI)J

    move-result-wide v3

    aput-wide v3, p1, v2

    .line 1223
    iget-object p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    aget-wide v3, p1, v2

    sget-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Spec;->IV:[J

    aget-wide v5, v0, v2

    xor-long/2addr v3, v5

    aput-wide v3, p1, v2

    .line 1224
    iput-boolean v1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->hasKey:Z

    return-object p0
.end method

.method public final setLeafLength(I)Lat/gadermaier/argon2/blake2/Blake2b$Param;
    .locals 6

    .line 1120
    invoke-virtual {p0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->lazyInitBytes()V

    .line 1121
    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->writeInt(I[BI)V

    .line 1122
    iget-object p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->readLong([BI)J

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 1123
    iget-object p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    aget-wide v2, p1, v1

    sget-object v0, Lat/gadermaier/argon2/blake2/Blake2b$Spec;->IV:[J

    aget-wide v4, v0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p1, v1

    return-object p0
.end method

.method public final setNodeDepth(I)Lat/gadermaier/argon2/blake2/Blake2b$Param;
    .locals 6

    .line 1150
    invoke-virtual {p0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->lazyInitBytes()V

    .line 1151
    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    int-to-byte p1, p1

    const/16 v1, 0x10

    aput-byte p1, v0, v1

    .line 1152
    iget-object p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    invoke-static {v0, v1}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->readLong([BI)J

    move-result-wide v0

    const/4 v2, 0x2

    aput-wide v0, p1, v2

    .line 1153
    iget-object p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    aget-wide v0, p1, v2

    sget-object v3, Lat/gadermaier/argon2/blake2/Blake2b$Spec;->IV:[J

    aget-wide v4, v3, v2

    xor-long/2addr v0, v4

    aput-wide v0, p1, v2

    .line 1154
    iget-object p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->readLong([BI)J

    move-result-wide v0

    const/4 v2, 0x3

    aput-wide v0, p1, v2

    .line 1155
    iget-object p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    aget-wide v0, p1, v2

    sget-object v3, Lat/gadermaier/argon2/blake2/Blake2b$Spec;->IV:[J

    aget-wide v4, v3, v2

    xor-long/2addr v0, v4

    aput-wide v0, p1, v2

    return-object p0
.end method

.method public final setNodeOffset(J)Lat/gadermaier/argon2/blake2/Blake2b$Param;
    .locals 5

    .line 1135
    invoke-virtual {p0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->lazyInitBytes()V

    .line 1136
    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    const/16 v1, 0x8

    invoke-static {p1, p2, v0, v1}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->writeLong(J[BI)V

    .line 1137
    iget-object p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    iget-object p2, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    invoke-static {p2, v1}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->readLong([BI)J

    move-result-wide v0

    const/4 p2, 0x1

    aput-wide v0, p1, p2

    .line 1138
    iget-object p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    aget-wide v0, p1, p2

    sget-object v2, Lat/gadermaier/argon2/blake2/Blake2b$Spec;->IV:[J

    aget-wide v3, v2, p2

    xor-long/2addr v0, v3

    aput-wide v0, p1, p2

    return-object p0
.end method

.method public final setPersonal([B)Lat/gadermaier/argon2/blake2/Blake2b$Param;
    .locals 6

    .line 1248
    invoke-virtual {p0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->lazyInitBytes()V

    .line 1249
    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    const/16 v1, 0x40

    const/4 v2, 0x0

    const/16 v3, 0x30

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 1250
    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1251
    iget-object p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    invoke-static {v0, v3}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->readLong([BI)J

    move-result-wide v0

    const/4 v2, 0x6

    aput-wide v0, p1, v2

    .line 1252
    iget-object p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    aget-wide v0, p1, v2

    sget-object v3, Lat/gadermaier/argon2/blake2/Blake2b$Spec;->IV:[J

    aget-wide v4, v3, v2

    xor-long/2addr v0, v4

    aput-wide v0, p1, v2

    .line 1253
    iget-object p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    const/16 v1, 0x38

    invoke-static {v0, v1}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->readLong([BI)J

    move-result-wide v0

    const/4 v2, 0x7

    aput-wide v0, p1, v2

    .line 1254
    iget-object p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    aget-wide v0, p1, v2

    sget-object v3, Lat/gadermaier/argon2/blake2/Blake2b$Spec;->IV:[J

    aget-wide v4, v3, v2

    xor-long/2addr v0, v4

    aput-wide v0, p1, v2

    return-object p0
.end method

.method public final setSalt([B)Lat/gadermaier/argon2/blake2/Blake2b$Param;
    .locals 6

    .line 1233
    invoke-virtual {p0}, Lat/gadermaier/argon2/blake2/Blake2b$Param;->lazyInitBytes()V

    .line 1234
    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    const/16 v1, 0x30

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 1235
    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1236
    iget-object p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    invoke-static {v0, v3}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->readLong([BI)J

    move-result-wide v0

    const/4 v2, 0x4

    aput-wide v0, p1, v2

    .line 1237
    iget-object p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    aget-wide v0, p1, v2

    sget-object v3, Lat/gadermaier/argon2/blake2/Blake2b$Spec;->IV:[J

    aget-wide v4, v3, v2

    xor-long/2addr v0, v4

    aput-wide v0, p1, v2

    .line 1238
    iget-object p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    iget-object v0, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->bytes:[B

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lat/gadermaier/argon2/blake2/Blake2b$Engine$LittleEndian;->readLong([BI)J

    move-result-wide v0

    const/4 v2, 0x5

    aput-wide v0, p1, v2

    .line 1239
    iget-object p1, p0, Lat/gadermaier/argon2/blake2/Blake2b$Param;->h:[J

    aget-wide v0, p1, v2

    sget-object v3, Lat/gadermaier/argon2/blake2/Blake2b$Spec;->IV:[J

    aget-wide v4, v3, v2

    xor-long/2addr v0, v4

    aput-wide v0, p1, v2

    return-object p0
.end method
