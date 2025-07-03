\# 🐳 Day 15 — LVM + Docker Lab POC



---



\## 🎯 Objective



Master advanced Linux storage and container integration by:



\- Creating a file-based virtual disk

\- Setting up LVM (Logical Volume Manager)

\- Mounting the volume to the filesystem

\- Running a Docker container with LVM-backed persistent storage



---



\## 📌 Commands \& Tools Used



| Command / Tool       | Purpose                                           |

|----------------------|---------------------------------------------------|

| `fallocate`          | Create a virtual disk image                       |

| `losetup`            | Attach file as loop device                        |

| `fdisk`              | Partition the loop device                         |

| `pvcreate`, `vgcreate`, `lvcreate` | Set up LVM structures              |

| `mkfs.ext4`          | Format logical volume                             |

| `mount`              | Mount logical volume to a directory               |

| `docker run -v`      | Mount host directory into Docker container        |



---



